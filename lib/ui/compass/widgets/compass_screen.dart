import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/home/home_view_model.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  @override
  Widget build(BuildContext context) {
    return Text('compass screen');
  }
}
