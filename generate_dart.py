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
        write(f, TlObject )
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
            write(f,ABC.format(**_))

def process_body(_class: dict, abc: dict, params: dict) -> str:
 
    constructor_parameters = []
    _json = [f"'@type': '{lowerCamelCase(_class)}'", "if(extra != null) '@extra': extra"]
    facrory_method_body = []

    f = io.StringIO()
    if not params:
        write(f, f'{_class}({{this.extra}});') # constructor
        write(f, METHODS, json=','.join(_json)) # toJson method body
        write(f, FACTORY_METHOD, name=_class, body="\n")

        f.seek(0)
        return f.read()
    


    for name, info in params.items():
        description = info['description']
        nullable = info['nullable']
        type = info['type']
        tl = info['tl']
        enum = Type(info['enum'])
        name_ = name+'_' if name == type else name
        _json.append(f"'{name}': {name_}")

        type_ = type+'?' if nullable else type
        late = '' if nullable else 'late '
        
        _ = "required" if not nullable else ''
        constructor_parameters.append(f"{_} this.{name_}")

        write(f,f"/// [{name_}] {description}") # parameter comment
        write(f,f"{late}{type_} {name_};") # parameter field

        if enum == Type.TL:
            abstract = abc.get(type, None)
            if abstract:
                
                temp = [f"switch (_map['{name}']{'?' if nullable else ''}['@type']) {{"]

                
                for a in abstract['child']:
                    temp.append(f"""
                    case '{a}':
                        {name_} = {a}.fromMap(_map["{name}"]);
                        break;
                    """)
                
                temp.append(f"""\
                    case null:
                    default:
                        {f"{name_} = null;" if nullable else ''}
                        break;
                }}
                """)
                facrory_method_body.append('\n'.join(temp))
            else:
                facrory_method_body.append(f'{name_} = {type}.fromMap(_map["{name}"]);')

        elif enum == Type.VECTOR_TL:
            _ = CamelCase(tl)
            abstract = abc.get(_, None)
            if abstract:
                
                temp = [
                    f"{name_} = _map['{name}']{'?' if nullable else ''}.map((e) {{\n"
                    f"switch (e['@type']) {{"
                ]
                for a in abstract['child']:
                    temp.append(f"""\
                    case '{a}':
                        return {a}.fromMap(e);
                    """
                    )
                temp.append('}}).toList();')
                facrory_method_body.append('\n'.join(temp))
            else:
                facrory_method_body.append(f'{name_} = {type}.from((_map["{name}"] ?? []).map((e) => {_}.fromMap(e)));')
        else:
            facrory_method_body.append(f"{name_} = _map['{name}'];")

            

    
    write(f,f"{_class}({{ {','.join(constructor_parameters)}, this.extra }});") # constructor
    write(f, METHODS, json=','.join(_json)) # toJson method body
    write(f, FACTORY_METHOD, name=_class, body="\n".join(facrory_method_body))
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
    with open(EXPORT_CLASS_FILE, 'w') as f:
        write(f,preamble)
        write(f,"import './abc.dart';")
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
            write(f,CLASS, **_)

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
        write(f,preamble)
        write(f,"import './abc.dart';")
        write(f,"import './classes.dart';")
        for name, body in functions.items():

           _ = dict(
            description = body['description'],
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
    print("Generated 3 files in {} seconds.".format(round(time.time() - st), 2))
    



    
    

        
    


if __name__ == '__main__':
    generate()    
    _ = os.popen(f"dart format {EXPORT_ABC_CLASS_FILE} {EXPORT_CLASS_FILE} {EXPORT_FUNC_FILE}").read()
    print(_)