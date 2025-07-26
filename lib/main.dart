import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FlutterLabApp());
}

class FlutterLabApp extends StatelessWidget {
  const FlutterLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FlutterLabModel(),
      child: const Text('Welcome to Flutter Lab!'),
    );
  }
}

class FlutterLabModel extends ChangeNotifier {}
