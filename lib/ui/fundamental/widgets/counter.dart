import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterState();
}

class _CounterState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $_counter'),
        TextButton(
          onPressed: () {
            setState(() {
              _incrementCounter();
            });
          },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
