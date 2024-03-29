import enum
import json
import re
from typing import Any, Tuple

from const import ABC_CLASS_JSON_FILE, CLASS_JSON_FILE, FUNC_JSON_FILE, DART_TYPES


class Serializer(json.JSONEncoder):
    def default(self, o: Any) -> Any:
        if isinstance(o, set):
            return list(o)
        if isinstance(o, Type):
            return o.value
        return super().default(o)


class Type(enum.Enum):
    TL = 7
    DART = 3
    VECTOR_TL = 14
    VECTOR_DART = 6

    @classmethod
    def _missing_(cls, value: object) -> Any:
        if isinstance(value, int):
            if value in {3, 7, 6, 14}:
                return cls(value)
            if value % 7 == 0:
                return cls(14)
            elif value % 3 == 0:
                return cls(6)
        return super()._missing_(value)




def CamelCase(x: str):
    return (x[0].upper() + x[1:]).strip()


def lowerCamelCase(x: str):
    return (x[0].lower() + x[1:]).strip()


def get_dart_type(type_: str) -> Tuple[str, str, Type, int]:
    #                                  d    et   enum  depth

    if type_.startswith('vector'):
        return _vector_to_List(type_)

    dart_type = DART_TYPES.get(type_, None)

    if dart_type is not None:
        return dart_type, dart_type, Type.DART, 0
    else:
        type_ = CamelCase(type_)
        return type_, type_, Type.TL, 0


def _vector_to_List(vector):
    type_ = re.search(r"vector<(.*)>", vector).group(1)
    dart_type, _, _enum, depth = get_dart_type(type_)
    return f"List<{dart_type}>", _, Type(_enum.value * 2), 1 + depth





def need_reload():
    try:
        for i in [ABC_CLASS_JSON_FILE, CLASS_JSON_FILE, FUNC_JSON_FILE]:
            with open(i) as f:
                assert json.load(f)
    except (AssertionError, OSError) as _:
        return True
    else:
        return False


def read_all_json():
    with open(ABC_CLASS_JSON_FILE) as f:
        abc = json.load(f)
    with open(CLASS_JSON_FILE) as f:
        clss = json.load(f)
    with open(FUNC_JSON_FILE) as f:
        fns = json.load(f)
    return abc, clss, fns


def write(f, string: str, **kwargs):
    if kwargs:
        f.write(string.format(**kwargs))
        f.write('\n')
    else:
        f.write(string)
        f.write('\n')

if __name__ == '__main__':
    print(get_dart_type('vector<vector<vector<keyboardButton>>>'));
    print(get_dart_type('keyboardButton'));
    print(get_dart_type('vector<keyboardButton>'));