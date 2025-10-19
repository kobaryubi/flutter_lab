import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFFFFFFF),
      child: const Center(
        child: Text(
          '404 - Page Not Found',
          style: TextStyle(color: AppColors.black1),
        ),
      ),
    );
  }
}
