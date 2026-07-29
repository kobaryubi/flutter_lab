import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating text selection on a raw [EditableText] without
/// material.
///
/// Step 1: screen skeleton only — the [EditableText] arrives in the next
/// step.
class EditableTextSelectionScreen extends StatelessWidget {
  const EditableTextSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('EditableText selection')),
    child: SizedBox.shrink(),
  );
}
