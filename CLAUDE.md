# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Development Commands

```bash
# Run the app (with flavor)
flutter run --flavor local lib/main.dart

# Code generation (required after modifying freezed/riverpod/retrofit files)
fvm dart run build_runner build
fvm dart run build_runner watch -d  # Watch mode

# Linting and formatting
flutter analyze
dart format .
dart run custom_lint

# Testing
flutter test test/counter_test.dart  # Single test
flutter test                          # All tests

# Generate localization
flutter gen-l10n

# Generate assets (flutter_gen)
fluttergen

# Generate API client from OpenAPI spec
docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli generate \
  -i /local/petstore.yaml -g dart-dio -o /local/package/petstore \
  --additional-properties pubName=petstore,pubLibrary=petstore
cd package/petstore && dart run build_runner build --delete-conflicting-outputs
```

## Architecture Overview

This project follows **Clean Architecture** with feature-based organization:

```
lib/
├── domain/           # Business logic layer (pure Dart)
│   ├── models/       # Entities (@freezed)
│   ├── use_cases/    # Business logic callables
│   └── [feature]/    # Repository interfaces
├── data/             # Data layer
│   ├── repositories/ # Repository implementations
│   ├── services/     # API clients (Retrofit/Dio)
│   ├── mapper/       # DTO→Domain mapping (auto_mappr)
│   └── platform/     # Platform channels
├── application/      # DI layer
│   └── di/           # Riverpod providers
├── ui/               # Presentation layer
│   ├── core/         # Shared themes, components
│   └── [feature]/    # Feature screens, view models, UI state
└── routing/          # GoRouter setup with typed routes
```

## Key Patterns

### State Management: Riverpod + Hooks

```dart
// ViewModel pattern
@riverpod
class MyViewModel extends _$MyViewModel {
  @override
  MyUIState build() => const MyUIState.initial();

  Future<void> loadData() async {
    state = state.copyWith(data: await AsyncValue.guard(() => ref.read(useCaseProvider).call()));
  }
}

// UI State with Freezed
@freezed
abstract class MyUIState with _$MyUIState {
  const factory MyUIState({required AsyncValue<Data>? data}) = _MyUIState;
}

// Consuming in UI
class MyScreen extends ConsumerWidget {
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myViewModelProvider);
    return state.data?.when(...);
  }
}
```

### Repository Pattern with Result Types

```dart
// Domain interface
abstract class PetRepository {
  AsyncResult<List<Pet>> listPets();
}

// Data implementation - uses result_dart for error handling
class PetRepositoryRemote implements PetRepository {
  @override
  AsyncResult<List<Pet>> listPets() async {
    try {
      final dtos = await _api.petsGet();
      return _mapper.convert(dtos).toSuccess();
    } on DioException catch (e) {
      return e.toFailure();
    }
  }
}
```

### Typed Routing with go_router_builder

```dart
// Define route
@TypedGoRoute<HomeRoute>(path: Routes.home)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

// Navigate
context.go(Routes.home);
HomeRoute().go(context);
```

## Code Generation

Files are auto-generated with build_runner:
- `*.freezed.dart` - Immutable models
- `*.g.dart` - JSON serialization, Riverpod providers
- `*.auto_mappr.dart` - DTO mapping
- `router.g.dart` - Typed routes

Run `fvm dart run build_runner build` after modifying annotated files.

## Flavors

Two flavors: `local` and `production`
- Set via: `flutter run --flavor local`
- Config in `lib/flavors.dart`

## Platform Integration

Platform-specific code uses method channels:
- Android: `android/app/src/main/kotlin/.../usecase/`
- Abstracted via repository pattern in `lib/data/platform/`

## Dependencies

- **State**: `hooks_riverpod`, `flutter_hooks`
- **Routing**: `go_router` with `go_router_builder`
- **Networking**: `dio`, `retrofit`
- **Models**: `freezed`, `json_serializable`
- **Mapping**: `auto_mappr`
- **Error Handling**: `result_dart`
- **Linting**: `very_good_analysis`, `custom_lint`, `riverpod_lint`

## Commit Message Convention

Use Gitmoji prefixes for all commit messages:

- ✨ New feature
- 🐛 Bug fix
- 📝 Documentation
- 💄 UI/style updates
- ♻️ Refactor
- ✅ Tests
- 🔧 Configuration
- 🚀 Deploy/release
- 🔥 Remove code/files
- 🎨 Improve structure/format

Example: `✨ add user authentication feature`
