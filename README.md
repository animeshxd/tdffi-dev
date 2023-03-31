```bash
git clone --recurse-submodules git@github.com:animeshxd/tdffi-dev.git
cd tdffi-dev/td
```
build tdlib https://github.com/tdlib/td#building
```bash
cd ..
mkdir -p headers/td/telegram/
cp td/build/td/telegram/tdjson_export.h headers/td/telegram/tdjson_export.h
cp td/td/telegram/td_json_client.h headers/td_json_client.h

python generator/generate_dart.py

cd tdffi
dart pub get
dart run ffigen --config ../ffigen.yaml 
```
output location: `tdffi/lib/src/generated/`
