import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class WorkoutListScreen extends StatelessWidget {
  const WorkoutListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          LocationRoute().push<void>(context);
        },
        child: const Text(
          'Location',
          style: TextStyle(color: AppColors.black1),
        ),
      ),
    );
  }
}
