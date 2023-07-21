import 'dart:convert';
import 'dart:io';

import 'const.dart';
import 'utils.dart';

Map<String, Map<String, Object?>> parameter_infos = {};
Map<String, Map<String, Object?>> abc_classes = {};
Map<String, Map<String, Object?>> classes = {};
Map<String, Map<String, Object?>> functions = {};

void reset() {
  parameter_infos.clear();
}


(String, Map<String, Object?>, String) process_schema(String raw_body) {
  raw_body = raw_body.replaceAll(';', '').trim();
  var data = raw_body.split("=");
  var class_body = data[0].trim().split(' ');
  var parent = data[1];

  var class_name = class_body[0].toCamelCase;

  class_body.sublist(1).map((e) {
    processTlParameters(e, parameter_infos);
  }).toList();
  return (class_name.trim(), parameter_infos, parent.trim());
}

String? process_docs(String raw_comment) {
  String _comment = "";
  for (var r in RegExp(r"(?=(@(param_)?(\w+)(.+?))(@|$))", multiLine: true)
      .allMatches(raw_comment)) {
    var parameter = r.group(3)!;
    var description = r.group(4);
    var parameter_ = r.group(2);

    if (parameter == 'description' && parameter_ == null)
      // print(description)
      _comment = description?.trim() ?? _comment;
    else {
      parameter_infos[parameter] = {
        "description": description?.trim(),
        "nullable":
            RegExp(r"(may be null|If empty|pass null)", caseSensitive: false)
                .hasMatch(description ?? '')
      };
    }
  }
  return _comment;
}

void put_abc(String key, {String? value, String? description}) {
  var data = abc_classes[key.trim()];
  // print(data);
  assert(value != null || description != null);
  if (data == null) {
    data = {"description": description, "child": Set()};
    // print(data);
    if (value != null) ((data["child"]) as Set).add(value.trim());
    abc_classes[key.trim()] = data;
    return;
  }
  (data["child"] as Set).add(value!.trim());
}

void generate_json() {
  var data = File(TL_API_FILE).readAsStringSync();
  bool isFunction = false;
  var regex = RegExp(
    r"(//@class (.+) @description (.+))|(//@description(.|\n)+?)(\n.* = .*;)$",
    multiLine: true,
  );
  var _class_or_func = classes;
  var iterable = regex.allMatches(data);
  for (var i in iterable) {
    final abc = i.group(2);
    final abc_desc = i.group(3);
    final docs = i.group(4);
    final schema = i.group(6);

    if (abc != null && abc_desc != null) {
      put_abc(abc, description: abc_desc);
    } else {
      if (schema ==
          "\ngetAuthorizationState = AuthorizationState;") // now function starts
      {
        isFunction = true;
        _class_or_func = functions;
      }
      var description = process_docs(docs!);
      var (class_name, parameter_infos, parent) =
          process_schema(schema!);
      var _data = {
        "description": description,
        "parameters": json.decode(json.encode(parameter_infos)),
        "return": null,
        "parent": null
      };

      if (isFunction) {
        _data["return"] = parent;
      }
      else {
        if (parent.toLowerCase() != class_name.toLowerCase())
          _data['parent'] = parent;
        else
          _data['parent'] = 'TlObject';
      }

      _class_or_func[class_name] = _data; //add class or function to dictionary
      if (!isFunction && parent.toLowerCase() != class_name.toLowerCase())
        put_abc(parent, value: class_name);
      reset();
    }
  }
}

void main() {
  generate_json();
  var test = json.decode(File(ABC_CLASS_JSON_FILE).readAsStringSync());
  abc_classes.forEach((key, value) {
    test[key]!;
    assert((test[key]['child'] as List).length == (value['child'] as Set).length);
  });
  // print(json.encode(
  //   abc_classes,
  //   toEncodable: (object) {
  //     if (object is Set) {
  //       return object.toList();
  //     }
  //   },
  // ));

  test = json.decode(File(CLASS_JSON_FILE).readAsStringSync());
  classes.forEach((key, value) {
    test[key]!;
    assert((test[key]['parameters'] as Map).length == (value['parameters'] as Map).length);
  });
  //   print(json.encode(
  //   classes,
  //   toEncodable: (object) {
  //     if (object is Set) {
  //       return object.toList();
  //     }
  //   },
  // ));
  test = json.decode(File(FUNC_JSON_FILE).readAsStringSync());
  functions.forEach((key, value) {
    test[key]!;
    assert((test[key]['parameters'] as Map).length == (value['parameters'] as Map).length);
  });
  // print(json.encode(
  //   functions,
  //   toEncodable: (object) {
  //     if (object is Set) {
  //       return object.toList();
  //     }
  //   },
  // ));


  
}
