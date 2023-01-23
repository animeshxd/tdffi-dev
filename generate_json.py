import json
import logging
from pprint import pprint
import re

from const import TL_API_FILE, ABC_CLASS_JSON_FILE, FUNC_JSON_FILE, CLASS_JSON_FILE
from utils import CamelCase, Serilizer, process_tl_parameter




parameter_descriptions = {}
abc_classes = {}
classes = {}
functions = {}

def reset():
    # print(parameter_descriptions)
    parameter_descriptions.clear()
    # input()
    ...


def process_comment(raw_comment: str):
    _comment = None
    for r in re.finditer(r"(?=(@(param_)?(\w+)(.+?))(@|$))", raw_comment.strip(), re.M):
        parameter, description = r.group(3), r.group(4) # variable # description
        parameter_ = r.group(2) # param_
        if parameter == 'description' and parameter_ is None:
            # print(description)
            _comment = description
        else:
            parameter_descriptions[parameter] = {
                "description": description.strip(),
                "nullable": bool(re.search("(?i)(may be null|If empty|pass null)", description))
            }
    return _comment.strip()

def process_body(raw_body: str):

    class_body, parent = raw_body.strip()[:-1].split("=") # ignore ';' and split
    class_body = class_body.split()
    # print(class_body)

    class_name = CamelCase(class_body[0])
    class_param = map(lambda a: process_tl_parameter(a, parameter_descriptions), class_body[1:])
    list(class_param)
    return class_name, parameter_descriptions, parent.strip()

def put_abc(key, value = None, description = None):
    data = abc_classes.get(key.strip(), None)
    assert value or description
    if not data:
        data  = {
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
        miss = True
        is_function = False
        regex = re.compile(r"(\/\/@class (.+) @description (.+))|(\/\/@description(.|\n)+?)(\n.* = .*;)$", re.M)
        iterable = regex.finditer(f.read())
        _class_or_func = classes
        for i in iterable:
            # assert len(i.groups()) == 3, (i.groups(), len(i.groups()))
            _, abc, abc_desc, raw_comment, _, raw_body = i.groups()
        #   1, 2,      3,     4,     5,    6, 7

            # assert not abc and not abc_desc
            if abc and abc_desc: # abstract class
                # print(abc, abc_desc, sep=" : ")
                put_abc(abc, description=abc_desc)
                # continue
            else:
                
                if raw_body == "\ngetAuthorizationState = AuthorizationState;": # now function starts
                    is_function = True
                    _class_or_func = functions
                description = process_comment(raw_comment)
                class_name, class_body, parent = process_body(raw_body)
                
                _data = {
                        "description": description,
                        "parameters": class_body.copy(),
                        "return": None,
                        "parent": None
                    }
                if is_function:
                    _data["return"] = parent
                if parent.lower() != class_name.lower():
                    _data['parent'] = parent
                else:
                    _data['parent'] = 'TlObject'
        
                # print(_data)
                _class_or_func[class_name] = _data # add class or function to dictionary

                if not is_function and parent.lower() != class_name.lower():
                    put_abc(parent, class_name)
                
                # print()
                # print(comment)
                # print(class_name, class_body, sep=" : ")
                # print()
                reset()
    for name, data in zip(
            (CLASS_JSON_FILE, ABC_CLASS_JSON_FILE, FUNC_JSON_FILE),
            (classes, abc_classes, functions)
        ):
        with open(name, "w") as f:
            json.dump(data, f, cls=Serilizer, indent=4)

    return abc_classes, classes, functions

if __name__ == "__main__":
    generate_json()

"""
    for i in f:
        if miss:
            if i.startswith('vector'):
                miss = False
            continue  
        if i.startswith('---functions---'): # Now function starts
            break

        if i.startswith("//"):
            reset_count = 0
        
        if i.startswith('\n'): # Reset
            reset()
                    

        
        if i.startswith('//@class'): # Now the class is abstract
            # print(i)
            ...
        
        # CLASS
        if i.startswith("//") and not i.startswith('//@class'): # comment / description
            for r in re.finditer(r"(?=(@(param_)?(\w+)(.+?))(@|$))", i):
                parameter, description = r.group(3), r.group(4) # variable # description
                parameter_ = r.group(2) # param_
                if parameter == 'description' and parameter_ is None:
                    print(description)
                else:
                    parameter_descriptions[parameter] = {
                        "description": description.strip(),
                        "nullable": bool(re.search("(?i)(may be null|If empty|pass null)", description))
                    }
        if not i.startswith(('//', '\n')): # Class Defination
            class_body, parent = i[:-1].split("=") # ignore ';' and split
            class_body = class_body.split()
            # print(class_body)

            class_name = CamelCase(class_body[0])
            class_param = map(lambda a: process_tl_parameter(a, parameter_descriptions), class_body[1:])
            list(class_param)


        # ENDS CLASS
        

"""
