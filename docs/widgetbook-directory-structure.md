# Widgetbook Directory Structure

Refs: [Quick Start](https://docs.widgetbook.io/quick-start),
[Annotations](https://docs.widgetbook.io/use-cases/annotations)

The official docs define no file layout for `widgetbook/lib/`; the catalog
tree comes from `@UseCase` (`type`, `path`), not from file locations.

## Policy: mirror the main app's `lib/`

```
lib/ui/core/ui/button.dart               # widget in the main app
widgetbook/lib/ui/core/ui/button.dart    # its use-cases (same relative path)
```

- One component = one file, holding all its `@UseCase` functions
  (`Default`, `Disabled`, ...), named `build<Type><Name>UseCase`.
- Organize the catalog tree with `path: '[Category]/folder'` instead of
  directories.
- `main.directories.g.dart` is generated next to the `@App` file
  (`widgetbook/lib/main.dart`).
