# flutter_lab

## Misc

```sh
flutter run lib/main.dart

# Run the code generator
dart run build_runner watch -d
dart run build_runner build

flutter create --platforms android .
flutter gen-l10n
dart run vector_graphics_compiler -i assets/icons/add_location_outlined.svg -o assets/icons/add_location_outlined.svg.vec

dart run custom_lint
flutter widget-preview start
fluttergen
```

### To automatically upgrade your package dependencies to the latest versions

```sh
flutter pub upgrade --major-versions
```

### To see which dependencies have newer versions available

```sh
flutter pub outdated
```

### flutter commands

```sh
flutter analyze
flutter clean
```

### Dart commands

```sh
dart format .
```

### testing

```sh
flutter test test/counter_test.dart
flutter test test/fetch_album_test.dart
flutter test test/widget_test.dart
```

### preview

```sh
flutter widget-preview start
```

### fvm

```sh
curl -fsSL https://fvm.app/install.sh | bash
fvm use 3.35.0
fvm flutter doctor
```

### generate API client from OpenAPI spec

```sh
docker run --rm \
  -v ${PWD}:/local openapitools/openapi-generator-cli generate \
  -i /local/petstore.yaml \
  -g dart-dio \
  -o /local/package/petstore \
  --additional-properties pubName=petstore,pubLibrary=petstore
cd package/petstore
dart run build_runner build --delete-conflicting-outputs
cd ../..
```

### add local package

```sh
fvm flutter pub add "petstore:{path: package/petstore}"
```

### lefthook

```sh
brew install lefthook
```
