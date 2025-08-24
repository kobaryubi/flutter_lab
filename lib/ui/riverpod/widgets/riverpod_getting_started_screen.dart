import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/themes/dimens.dart';
import 'package:flutter_lab/ui/core/themes/theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TodoListFilter { all, active, completed }

class RiverpodGettingStartedScreen extends HookConsumerWidget {
  const RiverpodGettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoFocusNode = useFocusNode();
    final todoController = useTextEditingController();

    return ColoredBox(
      color: AppColors.white1,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: ListView(
            padding: Dimens.edgeInsetsScreenSymmetric,
            children: [
              // title
              Text(
                'todos',
                textAlign: TextAlign.center,
                style: TextStyles.headlineLarge,
              ),
              // text field
              EditableText(
                controller: todoController,
                focusNode: todoFocusNode,
                style: TextStyles.bodyMedium.copyWith(color: AppColors.black1),
                cursorColor: AppColors.gray1,
                backgroundCursorColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
