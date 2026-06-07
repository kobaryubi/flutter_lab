fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android test

```sh
[bundle exec] fastlane android test
```

Run the Flutter analyzer and unit tests

### android build

```sh
[bundle exec] fastlane android build
```

Build a release Android App Bundle (.aab) for the production flavor

### android build_apk

```sh
[bundle exec] fastlane android build_apk
```

Build a release Android APK (.apk) for the production flavor

### android beta_firebase

```sh
[bundle exec] fastlane android beta_firebase
```

Build and distribute the production APK to Firebase App Distribution

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
