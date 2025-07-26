import 'package:english_words/english_words.dart';
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
        title: 'Flutter Lab',
        theme: ThemeData(),
        home: const HomePage(),
      ),
    );
  }
}

class FlutterLabModel extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final flutterLabModel = context.watch<FlutterLabModel>();
    final pair = flutterLabModel.current;

    return Scaffold(
      body: Column(
        children: [
          const Text('Welcome to Flutter Lab!'),
          BigCard(pair: pair),
          ElevatedButton(
            onPressed: () {
              flutterLabModel.getNext();
            },
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  final WordPair pair;

  const BigCard({super.key, required this.pair});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(pair.asLowerCase),
    );
  }
}
