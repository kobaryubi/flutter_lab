import 'package:flutter/widgets.dart';

class Scaffold extends StatefulWidget {
  const Scaffold({this.drawer, super.key});

  final Widget? drawer;

  @override
  State<Scaffold> createState() => _ScaffoldState();
}

class _ScaffoldState extends State<Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
