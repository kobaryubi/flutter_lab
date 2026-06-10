fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios test

```sh
[bundle exec] fastlane ios test
```

Run the Flutter analyzer and unit tests

### ios build

```sh
[bundle exec] fastlane ios build
```

Build the iOS app (no code signing) to verify it compiles

### ios build_ipa

```sh
[bundle exec] fastlane ios build_ipa
```

Build a signed ad-hoc .ipa for the production flavor

### ios beta_firebase

```sh
[bundle exec] fastlane ios beta_firebase
```

Build and distribute the production .ipa to Firebase App Distribution

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
