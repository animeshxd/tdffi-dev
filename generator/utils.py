import enum
import json
import os
import re
from typing import Any, Optional, Tuple

from const import ABC_CLASS_JSON_FILE, CLASS_JSON_FILE, FUNC_JSON_FILE, BASE_DIR_JSON


class Serializer(json.JSONEncoder):
    def default(self, o: Any) -> Any:
        if isinstance(o, set):
            return list(o)
        if isinstance(o, Type):
            return o.value
        return super().default(o)


class Type(enum.Enum):
    TL = 2
    DART = 3
    VECTOR_TL = 4
    VECTOR_DART = 6


dart_types = {
    'double': 'double',
    'string': 'String',
    'int32': 'int',
    'int53': 'int',
    'int64': 'String',
    'bytes': 'String',  # 'Uint8List',
    'Bool': 'bool',
    "emojis": 'List<String>',
    'dynamic': 'dynamic',

    # vector {t:Type} # [ t ] = Vector t
}


def CamelCase(x: str):
    return (x[0].upper() + x[1:]).strip()


def lowerCamelCase(x: str):
    return (x[0].lower() + x[1:]).strip()


def get_dart_type(type_: str) -> Tuple[str, str, Type]:
    #    d     t   enum

    if type_.startswith('vector'):
        return _vector_to_List(type_)

    dart_type = dart_types.get(type_, None)

    if dart_type is not None:
        return dart_type, type_, Type.DART
    else:
        type_ = CamelCase(type_)
        return type_, type_, Type.TL


def _vector_to_List(vector):
    type_ = re.search(r"vector<(\w+)>", vector).group(1)
    dart_type, _, _enum = get_dart_type(type_)
    return f"List<{dart_type}>", _, Type(_enum.value * 2)


def get_tl_to_dart(tl: str):
    parameter, _type = tl.split(":")
    _type, tl, _enum = get_dart_type(_type)
    data = {
        "type": _type,
        "tl": tl,
        "enum": _enum
    }
    return parameter, data



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
