import 'package:flutter/widgets.dart';

void main() {
  runApp(const FlutterLabApp());
}

class FlutterLabApp extends StatelessWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome to Flutter Lab!');
  }
}

class FlutterLabModel extends ChangeNotifier {}
