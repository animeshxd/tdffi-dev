import io
import os
import time
from generate_json import generate_json
from utils import CamelCase, Type, lowerCamelCase, need_reload, read_all_json, write

from const import *

ABC = """
///{description}
///
///Inherited by {child}
abstract class {name} extends {parent} {{

}}
"""


def generate_abc_dart(abstract_classes: dict):
    with open(EXPORT_ABC_CLASS_FILE, 'w') as f:
        write(f, preamble)
        write(f, TlObject)
        write(f, Func)
        # write(f,'abstract class TlObject {}', 

        for name, body in abstract_classes.items():
            _ = "".join(f"[{i}], " for i in body['child'])
            # w)
            _ = dict(
                name=name,
                description=body['description'],
                parent="TlObject",
                child=_

            )
            write(f, ABC.format(**_))


def process_body(_class: str, abc: dict, params: dict) -> str:
    constructor_parameters = []
    static_parameters = ["extra: extra"]
    _json = [f"'@type': '{lowerCamelCase(_class)}'", "if(extra != null) '@extra': extra"]
    factory_method_body = []

    f = io.StringIO()
    if not params:
        write(f, f'{_class}({{this.extra}});')  # constructor
        write(f, METHODS, json=','.join(_json))  # toJson method body
        write(f, STATIC_METHOD, name=_class, body="\n", args=', '.join(static_parameters))

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

                temp = [
                    f"{late} {type_} {name_};",
                    f"switch (_map['{name}']{'?' if nullable else ''}['@type']) {{"
                ]

                for a in abstract['child']:
                    temp.append(f"""
                    case '{lowerCamelCase(a)}':
                        {name_} = {a}.fromMap(_map["{name}"]){strict};
                        break;
                    """)

                temp.append(f"""\
                    case null:
                    default:
                        {f"{name_} = null;" if nullable else ''}
                        break;
                }}
                """)
                factory_method_body.append('\n'.join(temp))
            else:
                factory_method_body.append(f'var {name_} = {_type}.fromMap(_map["{name}"]){strict};')

        elif enum == Type.VECTOR_TL:
            _ = CamelCase(tl)
            abstract = abc.get(_, None)
            if abstract:

                temp = [
                    f"var {name_} = _map['{name}']{'?' if nullable else ''}.map((e) {{\n"
                    f"switch (e['@type']) {{"
                ]
                for a in abstract['child']:
                    temp.append(f"""\
                    case '{lowerCamelCase(a)}':
                        return {a}.fromMap(e);
                    """
                                )
                temp.append('}}).toList();')
                factory_method_body.append('\n'.join(temp))
            else:
                factory_method_body.append(
                    f'var {name_} = {_type}.from((_map["{name}"] ?? []).map((e) => {_}.fromMap(e)));')
        elif enum == Type.VECTOR_DART:
            factory_method_body.append(f'var {name_} = {_type}.from((_map["{name}"] ?? []));')
        else:
            factory_method_body.append(f"var {name_} = _map['{name}']{strict} as {type_};")

    write(f, f"{_class}({{ {','.join(constructor_parameters)}, this.extra }});")  # constructor
    write(f, METHODS, json=','.join(_json))  # toJson method body
    write(f, STATIC_METHOD, name=_class, body="\n".join(factory_method_body), args=','.join(static_parameters))
    f.seek(0)
    return f.read()


def generate_child_dart(classes: dict, abc: dict):
    CLASS = """\
    ///{description}
    ///
    {return_}
    class {name} extends {parent} {{
         /// [extra] - Request identifier. Must be non-zero. 
         int? extra;
        {body}
    }}
    """

    with open(EXPORT_CLASS_FILE, 'w') as f, open(EXPORT_MAP_CLASS_STR, 'w') as f1:
        write(f, preamble)
        write(f, "import './abc.dart';")
        write(f1, "import './classes.dart';")
        write(f1, "import './abc.dart';")
        write(f1, EXPORT_MAP_BODY)

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
            )
            write(f, CLASS, **_)
            write(f1, f"'{lowerCamelCase(name)}': {name}.fromMap,")
        write(f1, "};")


def generate_func_dart(functions: dict, abc: dict):
    FUNC = """
    ///{description}
    ///
    ///Returns [{return_}]
    class {name} extends Func {{
         ///[extra] - Request identifier. Must be non-zero. 
         int? extra;
        {body}
    }}
    """.replace(SPACES, '')
    with open(EXPORT_FUNC_FILE, 'w') as f:
        write(f, preamble)
        write(f, "import './abc.dart';")
        write(f, "import './classes.dart';")
        for name, body in functions.items():
            _ = dict(
                description=body['description'],
                return_=body['return'],
                name=name,
                body=process_body(name, abc, body['parameters']),
            )
            write(f, FUNC, **_)


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
    print("Generated 4 files in {} seconds.".format(round(time.time() - st), 2))


if __name__ == '__main__':
    generate()
    _ = os.popen(
        f"dart format {EXPORT_ABC_CLASS_FILE} {EXPORT_CLASS_FILE} {EXPORT_FUNC_FILE} {EXPORT_MAP_CLASS_STR}").read()
    print(_)
