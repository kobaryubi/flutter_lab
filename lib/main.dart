import 'package:flutter/material.dart';
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
      child: MaterialApp(
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}

class FlutterLabModel extends ChangeNotifier {}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome to Flutter Lab!');
  }
}
