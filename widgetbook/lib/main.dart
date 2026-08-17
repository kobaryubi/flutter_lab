import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

/// Root widget of the Widgetbook catalog app.
///
/// The [widgetbook.App] annotation makes widgetbook_generator emit
/// `main.directories.g.dart` next to this file.
@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    // The default constructor wraps use-case previews in a plain
    // WidgetsApp, matching this project's no-Material policy.
    return Widgetbook(directories: directories);
  }
}
