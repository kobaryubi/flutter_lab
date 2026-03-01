# flutter_lab

## Clean

```sh
fvm flutter clean
fvm flutter pub get
fvm dart run build_runner build
```

## Run

```sh
flutter run lib/main.dart
```

## Code Generation

```sh
fvm dart run build_runner watch -d
fvm dart run build_runner build
flutter gen-l10n
fluttergen
```

## Misc

```sh
flutter create --platforms android .
dart run vector_graphics_compiler -i assets/icons/add_location_outlined.svg -o assets/icons/add_location_outlined.svg.vec
dart run custom_lint
flutter widget-preview start
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
lefthook install
lefthook validate
```

### FlutterFire CLI

```sh
# Activate with fvm's Dart
fvm dart pub global activate flutterfire_cli

# Run with fvm's Dart
fvm dart pub global run flutterfire_cli:flutterfire configure --help

# Configure for local flavor
fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-local \
  --out=lib/firebase_options_local.dart \
  --ios-build-config=Debug-local \
  --ios-out=ios/Runner/Firebase/local/GoogleService-Info.plist \
  --android-out=android/app/src/local/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab.local \
  --ios-bundle-id=com.masahikokobayashi.flutterlab.local

# Configure for production flavor
fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-production \
  --out=lib/firebase_options_production.dart \
  --ios-build-config=Debug-production \
  --ios-out=ios/Runner/Firebase/production/GoogleService-Info.plist \
  --android-out=android/app/src/production/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab \
  --ios-bundle-id=com.masahikokobayashi.flutterlab
```

### flutter flavorizr

```sh
fvm dart run flutter_flavorizr
```
