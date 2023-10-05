import io
import os
import re
import time
from pathlib import Path

from generate_json import generate_json
from utils import CamelCase, Type, lowerCamelCase, need_reload, read_all_json, write

from const import *

def process_body(_class: str, abc: dict, params: dict, class_description: str = '', function_returns: str = '') -> str:
    """construct body"""
    constructor_parameters = []
    static_parameters = ["extra: extra", "clientId: clientId"]
    _json = [f"'@type': '{lowerCamelCase(_class)}'", "if(extra != null) '@extra': extra"]
    factory_method_body = []
    with io.StringIO() as f:
        for name, info in params.items():
            description = info['description']
            nullable = info['nullable']
            _type = info['type']
            vectorElementType = info['vectorElementType']
            vector_depth = info["vector_depth"]
            enum = Type(info['enum'])
            name_ = name + '_' if name == _type else name
            _json.append(f"'{name}': {name_}")

            type_ = _type + '?' if nullable else _type
            late = '' if nullable else 'late '
            strict = '' if nullable else '!'

            _ = "required" if not nullable else ''
            constructor_parameters.append(f"{_} this.{name_}")
            static_parameters.append(f"{name_}: {name_}")

            write(f, f"/// {description}.")  # parameter comment
            
            has_extra_type_info = TYPEDEFS_DESCRIPTION.get(_type)
            if has_extra_type_info:
                write(f, f'///  {has_extra_type_info}')
            write(f, f"{late}{type_} {name_};")  # parameter field

            if enum == Type.TL:
                factory_method_body.append(f"var {name_} = {_type}.fromMap(_map['{name}']){strict};")
            elif enum == Type.VECTOR_TL or enum == Type.VECTOR_DART:
                resolved = list_type_resolver(name, _type, vectorElementType, vector_depth, enum)
                returnNullIfNull = '_map["{name}"] == null? null : ' if nullable else ''
                factory_method_body.append(f'var {name_} = {returnNullIfNull} {resolved};')
            else:
                factory_method_body.append(f"var {name_} = _map['{name}']{strict} as {type_};")
        constructor_parameters.extend(['this.extra', 'this.clientId'])
        if class_description:
            write(f, f"/// {class_description}.")
        if function_returns:
            write(f, "///")
            write(f, f"/// Returns [{function_returns}]")
        write(f, f"{_class}( {{ {','.join(constructor_parameters)}, }} );")  # constructor
        write(f, METHODS, json=','.join(_json))  # toJson method body
        write(f, STATIC_METHOD, name=_class, body="\n".join(factory_method_body), args=(', '.join(static_parameters))+',')
        f.seek(0)
        return f.read()
def _list_pattern(n, type):
    pattern = f"List<{type}>"  
    if n <=1:
        return []
    result = [pattern]
    
    for i in range(n - 2):
        pattern = f"List<{pattern}>"
        result.append(pattern)
    return result

def list_type_resolver(name, _type, vectorElementType, vector_depth, enum):
    resolver = '{_type}.from((_map["{name}"] ?? []).map((e) => {body},),)'
    type_resolver = f"{vectorElementType}.fromMap(e)" if enum == Type.VECTOR_TL else f"e as {vectorElementType}"
    for i in reversed(_list_pattern(vector_depth, vectorElementType)):
        resolver = resolver.format(_type="{_type}", name="{name}", body=f"{i}.from((e ?? []).map((e) => {{body}},),)")
    resolved = resolver.format(_type=_type, name=name, body=type_resolver)
    return resolved


def generate_abc_dart(abstract_classes: dict):
    """ Generate abstract classes"""
    with open(EXPORT_ABC_CLASS_FILE, 'w') as f:
        write(f, preamble)
        write(f, IMPORT_DEAFULT_PREAMBLE)
        write(f, IMPORT_CLASS_DART)
        write(f, IMPORT_OBJECTS_DART)
        write(f, TYPEDEFS)
        write(f, TlObject)
        write(f, EXTENSION_ON_ABC_BODY)
        write(f, Func)
        # write(f,'abstract class TlObject {}',

        for name, body in abstract_classes.items():
            _ = ", ".join(f"[{i}]" for i in body['child'])
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
            _ = dict(
                description=description,
                name=name,
                parent=parent,
                body=process_body(name, abc, body['parameters'], description),
                ID=lowerCamelCase(name)
            )
            write(f, CLASS_BODY, **_)

def generate_func_dart(functions: dict, abc: dict):
    with open(EXPORT_FUNC_FILE, 'w') as f:
        write(f, preamble)
        write(f, IMPORT_ABC_DART)
        write(f, IMPORT_CLASS_DART)
        for name, body in functions.items():
            description = body['description']
            return_ = body.get('return', '')
            parameters=body['parameters']
            parent = body['parent']
            _body = process_body(name, abc, parameters, description, return_)
            _ = dict(
                description=description,
                return_=return_,
                name=name,
                body=_body,
                parent=parent,
                ID=lowerCamelCase(name)
            )
            write(f, FUNC_BODY, **_)

def generate_extension_dart(abstract_classes: dict, classes: dict):
    """ generate extension for abstract type"""
    def generate_body(name):
        description: str = classes.get(name, {}).get('description', '')
        return EXTENSION_METHOD_BODY.format(type=name, name=lowerCamelCase(name), comment=f'/// {description}' )
    with open(EXPORT_EXTENSION_FILE, 'w') as e:
        write(e, IMPORT_CLASS_DART)
        write(e, IMPORT_ABC_DART)
        for name, body in abstract_classes.items():
            body = (generate_body(i) for i in body['child'])
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
    print("Generated json in {:.3f} seconds.".format(time.time() - st))

    st = time.time()
    os.makedirs(BASE_DIR_DART, exist_ok=True)

    generate_abc_dart(abstract_classes)
    generate_child_dart(classes, abstract_classes)
    generate_func_dart(functions, abstract_classes)
    generate_extension_dart(abstract_classes, classes)
    generate_map_to_class_dart(classes)

    with open(TD_LIBARY_DART_FILE_FOR_EXPORTS, 'w') as f:
        f.writelines(f'export "{i}";\n' for i in EXPORT_GENERATED_LIB_PATHS)

    print("Generated 5 files in {:.3f} seconds.".format(time.time() - st))

def generate_ffi_td_json_client_dart(FFIGEN_YAML_FILE='./ffigen.yaml'):
    st = time.time()

    FFIGEN_YAML_FILE_TMP = f'{FFIGEN_YAML_FILE}.temp'
    SRC_GENERATED_FFI_TD_JSON_FILE = path.join(DART_SRC_GENERATED_DIR, FFI_TD_JSON_CLIENT_DART_FILE)
    regex = re.compile('^output: .*', re.M)
    output = f"output: '{EXPORT_FFI_JSON_CLIENT_FILE}'"
    execute = f'dart pub global run ffigen --config {FFIGEN_YAML_FILE_TMP}'

    try:
        with open(FFIGEN_YAML_FILE,) as f:
            text = f.read()
            with open(FFIGEN_YAML_FILE_TMP, 'w') as f:
                f.write(regex.sub(output, text))
                
            print()
            print(os.popen(execute).read())

            with open(TD_LIBARY_DART_FILE_FOR_EXPORTS, 'r+') as f:
                if SRC_GENERATED_FFI_TD_JSON_FILE not in f.read():
                    f.write(f'export "{SRC_GENERATED_FFI_TD_JSON_FILE}";')
            
            print("Generated {} file in {:.2f} seconds.\n".format(EXPORT_FFI_JSON_CLIENT_FILE, time.time() - st))

    finally:
        Path(FFIGEN_YAML_FILE_TMP).unlink(missing_ok=True)       

if __name__ == '__main__':
    generate()
    generate_ffi_td_json_client_dart()

    exports = [
        EXPORT_ABC_CLASS_FILE,
        EXPORT_CLASS_FILE,
        EXPORT_FUNC_FILE,
        EXPORT_MAP_CLASS_STR_FILE,
        EXPORT_EXTENSION_FILE,
        TD_LIBARY_DART_FILE_FOR_EXPORTS,
    ]
    _ = os.popen(f"dart format {' '.join(exports)}").read()
    print(_)
