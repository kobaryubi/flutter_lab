# Widgetbook Directory Structure

Refs: [Quick Start](https://docs.widgetbook.io/quick-start),
[Annotations](https://docs.widgetbook.io/use-cases/annotations)

The official docs define no file layout for `widgetbook/lib/`. By default
the generator derives the catalog tree from each use-case file's path under
`lib/`; the `path` parameter of `@UseCase` overrides it per use case.

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
