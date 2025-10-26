import 'package:flutter/widgets.dart';
import 'package:flutter_lab/routing/router.dart';

class WorkoutListScreen extends StatelessWidget {
  const WorkoutListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          LocationRoute().go(context);
        },
      ),
    );
  }
}
