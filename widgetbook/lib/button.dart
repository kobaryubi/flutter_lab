import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

/// Widgetbook use case that shows [Button] with a static label.
@widgetbook.UseCase(name: 'Default', type: Button)
Widget buildButtonUseCase(BuildContext context) {
  /// Does nothing; the catalog entry only demonstrates appearance.
  void handleTap() {}

  return Button(onTap: handleTap, label: 'Button');
}
