import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/optimistic_state/widgets/optimistic_state_view_model.dart';

class OptimisticStateScreen extends StatefulWidget {
  const OptimisticStateScreen({super.key, required this.viewModel});

  final OptimisticStateViewModel viewModel;

  @override
  State<OptimisticStateScreen> createState() => _OptimisticStateScreenState();
}

class _OptimisticStateScreenState extends State<OptimisticStateScreen> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.white1,
      child: Center(
        child: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (BuildContext context, Widget? child) => Semantics(
            button: true,
            child: GestureDetector(
              onTap: widget.viewModel.subscribe.execute,
              child: widget.viewModel.subscribed
                  ? const Text('Subscribed')
                  : const Text('Subscribe'),
            ),
          ),
        ),
      ),
    );
  }
}
