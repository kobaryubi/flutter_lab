import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: ColoredBox(
          color: AppColors.white1,
          child: Column(
            children: [
              AppBar(title: Text('Location')),
              Expanded(
                child: Center(
                  child: Text('Location Screen'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
