import json
import re
import os
from typing import Optional

from const import *
from utils import CamelCase, Serializer, get_dart_type

parameter_descriptions = {}
abc_classes = {}
classes = {}
functions = {}


def reset():
    # print(parameter_descriptions)
    parameter_descriptions.clear()
    # input()
    ...

def get_tl_to_dart(tl: str):
    parameter, _type = tl.split(":")
    _type, vectorElementType, _enum, depth = get_dart_type(_type)
    info = {
        "type": _type,
        "vectorElementType": vectorElementType,
        "enum": _enum,
        "vector_depth": depth
    }
    return parameter, info

def process_tl_parameter(source: str, lookup_dict: dict):
    parameter, data = get_tl_to_dart(source)
    result: Optional[dict] = lookup_dict.get(parameter, None)
    if not result:
        raise KeyError(f"parameter: {parameter} is not available in lookup_dict")
    result: dict
    result.update(data)
    return {parameter: result}



def process_comment(raw_comment: str):
    _comment = None
    for r in re.finditer(r"(?=(@(param_)?(\w+)(.+?))(@|$))", raw_comment.strip(), re.M):
        parameter, description = r.group(3), r.group(4)  # variable # description
        parameter_ = r.group(2)  # param_
        if parameter == 'description' and parameter_ is None:
            # print(description)
            _comment = description
        else:
            parameter_descriptions[parameter] = {
                "description": description.strip(),
                "nullable": bool(re.search("(?i)(may be null|If empty|pass null)", description))
            }
    return _comment.strip()


def process_schema(schema: str):
    class_body, parent = schema.strip()[:-1].split("=")  # ignore ';' and split
    class_body = class_body.split()
    # print(class_body)

    class_name = CamelCase(class_body[0])
    class_param = map(lambda a: process_tl_parameter(a, parameter_descriptions), class_body[1:])
    list(class_param)
    return class_name, parameter_descriptions, parent.strip()


def put_abc(key, value=None, description=None):
    data = abc_classes.get(key.strip(), None)
    assert value or description
    if not data:
        data = {
            "description": description,
            "child": set()
        }
        if value:
            data["child"].add(value.strip())
        abc_classes[key.strip()] = data
        return
    data["child"].add(value.strip())


def generate_json():
    with open(TL_API_FILE) as f:
        is_function = False
        regex = re.compile(r"(//@class (.+) @description (.+))|(//@description(.|\n)+?)(\n.* = .*;)$", re.M)
        iterable = regex.finditer(f.read())
        _class_or_func = classes
        for i in iterable:
            # assert len(i.groups()) == 3, (i.groups(), len(i.groups()))
            _, abc, abc_desc, raw_comment, _, schema = i.groups()
        #   1,   2,     3,          4,     5,    6, 

            # assert not abc and not abc_desc
            if abc and abc_desc:  # abstract class
                # print(abc, abc_desc, sep=" : ")
                put_abc(abc, description=abc_desc)
                # continue
            else:

                if schema == "\ngetAuthorizationState = AuthorizationState;":  # now function starts
                    is_function = True
                    _class_or_func = functions
                description = process_comment(raw_comment)
                class_name, class_body, parent = process_schema(schema)

                _data = {
                    "description": description,
                    "parameters": class_body.copy(),
                    "return": None,
                    "parent": None,
                }
                if is_function:
                    issync = bool(re.search('Can be called synchronously', description, re.I))
                    _data['parent'] = 'SyncFunc' if issync else 'Func'
                    _data["return"] = parent
                else:
                    if parent.lower() != class_name.lower():
                        _data['parent'] = parent
                    else:
                        _data['parent'] = 'TlObject'

                # print(_data)
                _class_or_func[class_name] = _data  # add class or function to dictionary

                if not is_function and parent.lower() != class_name.lower():
                    put_abc(parent, class_name)

                # print()
                # print(comment)
                # print(class_name, class_body, sep=" : ")
                # print()
                reset()
    os.makedirs(BASE_DIR_JSON, exist_ok=True)

    for name, data in zip(
            (CLASS_JSON_FILE, ABC_CLASS_JSON_FILE, FUNC_JSON_FILE),
            (classes, abc_classes, functions)
    ):
        with open(name, "w") as f:
            json.dump(data, f, cls=Serializer, indent=4)

    return abc_classes, classes, functions


if __name__ == "__main__":
    generate_json()
