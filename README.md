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
dart pub add --dev ffigen
# for termux: dart pub add -d ffigen --git-url https://github.com/animeshxd/ffigen

dart pub get
dart run ffigen --config ../ffigen.yaml 
```
output locations:  
   - `tdffi/lib/td.dart`
   - `tdffi/lib/src/generated/` 
   - `json/` 

example: [/tdffi/example/example.dart](https://github.com/animeshxd/tdffi-dev/blob/master/tdffi/example/example.dart)
