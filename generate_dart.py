from generate_json import generate_json
from utils import need_reload, read_all_json

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
        print(preamble, file=f)
        # print(TlObject, file=f)
        print('abstract class TlObject {}', file=f) 
    
        for name, body in abstract_classes.items():
            
            _ = "".join(f"[{i}], " for i in body['child'])
            # print(_)
            _ = dict(
                name=name, 
                description=body['description'], 
                parent="TlObject",
                child=_

            )
            print(ABC.format(**_), file=f)

def generate_child_dart(classes: dict):
    with open(EXPORT_CLASS_FILE, 'w') as f:
        print(preamble, file=f)
        print("import './abc.dart';", file=f)
        for name, body in classes.items():
            description = body['description']
            parent = body['parent']
            _ = body.get('return', None)
            return_ = f'///@returns {_}' if _ else ''
            print(f"""
            ///{description}
            ///
            {return_}
            class {name} extends {parent} {{
                
            }}
            """.replace(SPACES, ''), file=f)
        
def generate():
    if need_reload():
        abstract_classes, classes, functions = generate_json()
    else:
        abstract_classes, classes, functions = read_all_json()

    generate_abc_dart(abstract_classes)
    generate_child_dart(classes)
    
    

        
    


if __name__ == '__main__':
    generate()