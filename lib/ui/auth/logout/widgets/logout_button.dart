import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/assets.gen.dart';
import 'package:flutter_lab/ui/auth/logout/logout_view_model.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({required this.viewModel, super.key});

  final LogoutViewModel viewModel;

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.logout.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant LogoutButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.logout.removeListener(_onResult);
    widget.viewModel.logout.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.logout.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray1),
          borderRadius: BorderRadius.circular(8),
          color: const Color(0x00000000),
        ),
        child: Semantics(
          button: true,
          child: GestureDetector(
            onTap: widget.viewModel.logout.execute,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Assets.icons.logout.svg()),
            ),
          ),
        ),
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.logout.error) {
      widget.viewModel.logout.clearResult();
    }
  }
}
