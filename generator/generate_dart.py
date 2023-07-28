import io
import os
import time
from generate_json import generate_json
from utils import CamelCase, Type, lowerCamelCase, need_reload, read_all_json, write

from const import *

def process_body(_class: str, abc: dict, params: dict) -> str:
    """construct body"""
    constructor_parameters = []
    static_parameters = ["extra: extra", "clientId: clientId"]
    _json = [f"'@type': '{lowerCamelCase(_class)}'", "if(extra != null) '@extra': extra"]
    factory_method_body = []
    with io.StringIO() as f:
        if not params:
            write(f, f'{_class}({{this.extra, this.clientId}});')  # constructor
            write(f, METHODS, json=','.join(_json))  # toJson method body
            write(f, STATIC_METHOD, name=_class, body="\n", args=(', '.join(static_parameters))+',')

            f.seek(0)
            return f.read()

        for name, info in params.items():
            description = info['description']
            nullable = info['nullable']
            _type = info['type']
            tl = info['tl']
            enum = Type(info['enum'])
            name_ = name + '_' if name == _type else name
            _json.append(f"'{name}': {name_}")

            type_ = _type + '?' if nullable else _type
            late = '' if nullable else 'late '
            strict = '' if nullable else '!'

            _ = "required" if not nullable else ''
            constructor_parameters.append(f"{_} this.{name_}")
            static_parameters.append(f"{name_}: {name_}")

            write(f, f"/// [{name_}] {description}")  # parameter comment
            write(f, f"{late}{type_} {name_};")  # parameter field

            if enum == Type.TL:
                abstract = abc.get(_type, None)
                if abstract:
                    factory_method_body.append(f"var {name_} = {_type}.fromMap(_map['{name}']){strict};")
                else:
                    factory_method_body.append(f'var {name_} = {_type}.fromMap(_map["{name}"]){strict};')

            elif enum == Type.VECTOR_TL:
                _ = CamelCase(tl)
                abstract = abc.get(_, None)
                if abstract:
                    factory_method_body.append(f"var {name_} = _map['{name}']{'?' if nullable else ''}.map((e) => {_}.fromMap(e){strict});")
                else:
                    factory_method_body.append(
                        f'var {name_} = {_type}.from((_map["{name}"] ?? []).map((e) => {_}.fromMap(e)));')
            elif enum == Type.VECTOR_DART:
                factory_method_body.append(f'var {name_} = {_type}.from((_map["{name}"] ?? []));')
            else:
                factory_method_body.append(f"var {name_} = _map['{name}']{strict} as {type_};")

        write(f, f"{_class}({{ {','.join(constructor_parameters)}, this.extra, this.clientId }});")  # constructor
        write(f, METHODS, json=','.join(_json))  # toJson method body
        write(f, STATIC_METHOD, name=_class, body="\n".join(factory_method_body), args=(', '.join(static_parameters))+',')
        f.seek(0)
        return f.read()


def generate_abc_dart(abstract_classes: dict):
    """ Generate abstract classes"""
    with open(EXPORT_ABC_CLASS_FILE, 'w') as f:
        write(f, preamble)
        write(f, IMPORT_)
        write(f, IMPORT_CLASS_DART)
        write(f, TlObject)
        write(f, EXTENSION_ON_ABC_BODY)
        write(f, Func)
        # write(f,'abstract class TlObject {}',

        for name, body in abstract_classes.items():
            _ = "".join(f"[{i}], " for i in body['child'])
            _ = dict(
                name=name,
                description=body['description'],
                parent="TlObject",
                child=_,
                ID=lowerCamelCase(name),
                body=abc_fromMap_static_method(name, body['child'])
            )
            write(f, ABC_BODY, **_)
def abc_fromMap_static_method(name, children: list):
    # print(children)
    _list = []
    for c in children:
        _list.append(f"""
        case '{lowerCamelCase(c)}':
            return {c}.fromMap(_map);
        """.strip())
    return ABC_STATIC_METHOD.format(name=name, cases='\n'.join(_list));

def generate_child_dart(classes: dict, abc: dict):
    """generate type class"""

    with open(EXPORT_CLASS_FILE, 'w') as f:
        write(f, preamble)
        write(f, IMPORT_ABC_DART)

        for name, body in classes.items():
            description = body['description']
            parent = body['parent']
            _ = body.get('return', None)
            return_ = f'///@returns {_}' if _ else ''
            _ = dict(
                description=description,
                return_=return_,
                name=name,
                parent=parent,
                body=process_body(name, abc, body['parameters']),
                ID=lowerCamelCase(name)
            )
            write(f, CLASS_BODY, **_)

def generate_func_dart(functions: dict, abc: dict):
    with open(EXPORT_FUNC_FILE, 'w') as f:
        write(f, preamble)
        write(f, IMPORT_ABC_DART)
        write(f, IMPORT_CLASS_DART)
        for name, body in functions.items():
            _ = dict(
                description=body['description'],
                return_=body['return'],
                name=name,
                body=process_body(name, abc, body['parameters']),
                ID=lowerCamelCase(name)
            )
            write(f, FUNC_BODY, **_)

def generate_extension_dart(abstract_classes: dict):
    """ generate extension for abstract type"""
    with open(EXPORT_EXTENSION_FILE, 'w') as e:
        write(e, IMPORT_CLASS_DART)
        write(e, IMPORT_ABC_DART)
        for name, body in abstract_classes.items():
            body = (EXTENSION_METHOD_BODY.format(type=i, name=lowerCamelCase(i)) for i in body['child'])
            write(e, EXTENSION_BODY, name=name, body="\n".join(body))

def generate_map_to_class_dart(classes: dict):
    "construct a map to class"
    with open(EXPORT_MAP_CLASS_STR_FILE, 'w') as f1:

        write(f1, IMPORT_CLASS_DART)
        write(f1, IMPORT_ABC_DART)
        write(f1, EXPORT_getObject)

        write(f1, EXPORT_MAP_BODY_START)
        for name in classes.keys():
            write(f1, f"'{lowerCamelCase(name)}': {name}.fromMap,")
        write(f1, EXPORT_MAP_BODY_END)


def generate():
    st = time.time()
    if need_reload():
        abstract_classes, classes, functions = generate_json()
    else:
        abstract_classes, classes, functions = read_all_json()
    print("Generated json in {} seconds.".format(round(time.time() - st), 2))

    st = time.time()
    os.makedirs(BASE_DIR_DART, exist_ok=True)

    generate_abc_dart(abstract_classes)
    generate_child_dart(classes, abstract_classes)
    generate_func_dart(functions, abstract_classes)
    generate_extension_dart(abstract_classes)
    generate_map_to_class_dart(classes)

    with open(BASE_EXPORT_DIR, 'w') as f:
        f.write(EXPORT_GENERATED_LIB_PATHS)

    print("Generated 5 files in {} seconds.".format(round(time.time() - st), 2))


if __name__ == '__main__':
    generate()
    exports = [
        EXPORT_ABC_CLASS_FILE,
        EXPORT_CLASS_FILE,
        EXPORT_FUNC_FILE,
        EXPORT_MAP_CLASS_STR_FILE,
        EXPORT_EXTENSION_FILE
    ]
    _ = os.popen(f"dart format {' '.join(exports)}").read()
    print(_)
