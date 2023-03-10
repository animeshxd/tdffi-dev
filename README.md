```bash
mkdir -p headers/td/telegram/
cp td/build/td/telegram/tdjson_export.h headers/td/telegram/tdjson_export.h
cp td/td/telegram/td_json_client.h headers/td_json_client.h

python generator/generate_dart.py

cd tdffi
dart pub get
dart run ffigen --config ../ffigen.yaml 
```