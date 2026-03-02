import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen that displays the OCR-recognized text
/// with a copy-to-clipboard button.
class OcrResultScreen extends StatelessWidget {
  const OcrResultScreen({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    /// Copies the recognized text to the clipboard.
    void handleCopy() {
      Clipboard.setData(ClipboardData(text: text));
    }

    return Layout(
      appBar: const AppBar(title: Text('OCR Result')),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(text),
          Button(onTap: handleCopy, label: 'Copy to Clipboard'),
        ],
      ),
    );
  }
}
