import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/compass/view_models/compass_view_model.dart';

class CompassHeader extends StatelessWidget {
  const CompassHeader({super.key, required this.viewModel});

  final CompassViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final user = viewModel.user;
    if (user == null) {
      return const SizedBox();
    }
    return Container();
  }
}
