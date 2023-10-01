```bash
git clone --recurse-submodules git@github.com:animeshxd/tdffi-dev.git
cd tdffi-dev/
```
build tdlib https://github.com/tdlib/td#building

```bash
mkdir td/build
cd td/build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --target tdjson
cd ..
```

```bash
# setup for ffigen
cd .. # tdffi-dev/ (working directory)

mkdir -p headers/td/telegram/
cp td/build/td/telegram/tdjson_export.h headers/td/telegram/tdjson_export.h
cp td/td/telegram/td_json_client.h headers/td_json_client.h

dart pub global activate ffigen
# for termux: dart pub global activate ffigen -sgit https://github.com/animeshxd/ffigen

# you can remove with:
#   dart pub global deactivate ffigen
```

```bash
# tdffi-dev/ (working directory)

# generate 
#   dart ffi code from (td_json_client.h) 
#   dart classes from (td_api.tl)

python generator/generate_dart.py
cd tdffi

# generate files it in your own dart/flutter package
#
# dart/flutter create <your/package/location>
# DART_PACKAGE_DIR=<your/package/location> python generator/generate_dart.py
# cd <your/package/location>
# dart pub add ffi

dart pub get
```
```bash
# (Optional)
# generate dart ffi code (td_json_client.h)

# change output location in ffigen.yaml
# output: 'your/package/location/lib/.../td_json_client.dart'
# The output: location should be relative to ffigen.yaml or is absolute

# dart pub global run ffigen --config ../ffigen.yaml 
# or, dart pub global run ffigen --config <path/to/ffigen.yaml> 
```
output locations:  
   - `tdffi/lib/td.dart`
   - `tdffi/lib/src/generated/` 
   - `json/` 

example:
 - [/tdffi/example/example.dart](https://github.com/animeshxd/tdffi-dev/blob/master/tdffi/example/example.dart)
 - [/tdffi/lib/src/client/client.dart](https://github.com/animeshxd/tdffi-dev/blob/master/tdffi/lib/src/client/client.dart)
