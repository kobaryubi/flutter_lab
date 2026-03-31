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
fvm dart run pigeon --input pigeons/common.dart
fvm dart run pigeon --input pigeons/pigeon.dart
fvm dart run pigeon --input pigeons/arutana.dart
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
# Unit tests
flutter test test/widget_test.dart

# Integration tests (requires a connected device or simulator)
fvm flutter test integration_test/ui/counter/counter_screen_test.dart -d <deviceId> --flavor local
fvm flutter test integration_test/data/gateway/adfurikun/sdk_adfurikun_gateway_test.dart --flavor local
```

### Patrol

#### Setup

```sh
# Install Patrol CLI
dart pub global activate patrol_cli

# Verify setup
patrol doctor

# Set environment variable for fvm (add to ~/.zshrc)
export PATROL_FLUTTER_COMMAND="fvm flutter"
```

#### Running tests

```sh
# Development mode (hot-restart, press "r" to re-run)
patrol develop --target patrol_test/example_test.dart

# Full test run (simulator)
patrol test --target patrol_test/example_test.dart --show-flutter-logs

# Full test run (physical iOS device, requires release mode)
patrol test --target patrol_test/example_test.dart --release

```

### preview

```sh
flutter widget-preview start
```

### rbenv

```sh
# Install rbenv (includes ruby-build)
brew install rbenv

# Install Ruby version specified in .ruby-version
rbenv install

# Verify
ruby --version
```

### fastlane

```sh
# Install Bundler
gem install bundler

# Install dependencies (fastlane)
bundle install

# Run fastlane
bundle exec fastlane [lane]
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
  --platforms=android,ios \
  --ios-build-config=Debug-local \
  --ios-out=ios/Runner/Firebase/local/GoogleService-Info.plist \
  --android-out=android/app/src/local/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab.local \
  --ios-bundle-id=com.masahikokobayashi.flutterlab.local \
  -y

fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-local \
  --out=lib/firebase_options_local.dart \
  --platforms=android,ios \
  --ios-build-config=Release-local \
  --ios-out=ios/Runner/Firebase/local/GoogleService-Info.plist \
  --android-out=android/app/src/local/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab.local \
  --ios-bundle-id=com.masahikokobayashi.flutterlab.local \
  -y

fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-local \
  --out=lib/firebase_options_local.dart \
  --platforms=android,ios \
  --ios-build-config=Profile-local \
  --ios-out=ios/Runner/Firebase/local/GoogleService-Info.plist \
  --android-out=android/app/src/local/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab.local \
  --ios-bundle-id=com.masahikokobayashi.flutterlab.local \
  -y

# Configure for production flavor
fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-production \
  --out=lib/firebase_options_production.dart \
  --platforms=android,ios \
  --ios-build-config=Debug-production \
  --ios-out=ios/Runner/Firebase/production/GoogleService-Info.plist \
  --android-out=android/app/src/production/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab \
  --ios-bundle-id=com.masahikokobayashi.flutterlab \
  -y

fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-production \
  --out=lib/firebase_options_production.dart \
  --platforms=android,ios \
  --ios-build-config=Release-production \
  --ios-out=ios/Runner/Firebase/production/GoogleService-Info.plist \
  --android-out=android/app/src/production/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab \
  --ios-bundle-id=com.masahikokobayashi.flutterlab \
  -y

fvm dart pub global run flutterfire_cli:flutterfire configure \
  --project=flutter-lab-production \
  --out=lib/firebase_options_production.dart \
  --platforms=android,ios \
  --ios-build-config=Profile-production \
  --ios-out=ios/Runner/Firebase/production/GoogleService-Info.plist \
  --android-out=android/app/src/production/google-services.json \
  --android-package-name=com.masahikokobayashi.flutterlab \
  --ios-bundle-id=com.masahikokobayashi.flutterlab \
  -y
```

### Firebase Analytics DebugView

#### iOS

`-FIRDebugEnabled` is configured as a launch argument in the `local.xcscheme`.
Events are sent to DebugView automatically when running with the local scheme.

To disable:

```sh
# Add -FIRDebugDisabled to the scheme's launch arguments in Xcode
```

#### Android

```sh
# Enable debug mode
adb shell setprop debug.firebase.analytics.app com.masahikokobayashi.flutterlab.local

# Disable debug mode
adb shell setprop debug.firebase.analytics.app .none.
```

### flutter flavorizr

```sh
fvm dart run flutter_flavorizr
```
