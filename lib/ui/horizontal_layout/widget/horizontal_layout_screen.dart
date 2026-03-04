import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating a horizontal layout with a left column and a right
/// fixed-height widget.
class HorizontalLayoutScreen extends StatelessWidget {
  const HorizontalLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('Horizontal Layout')),
    child: ColoredBox(
      color: Color(0xFF000000),
      child: Center(
        child: Column(
          mainAxisSize: .min,
          spacing: 16,
          children: [
            ColoredBox(
              color: Color(0xFFFFFFFF),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  children: [
                    Column(
                      children: [
                        ColoredBox(
                          color: Color(0xFF2196F3),
                          child: SizedBox(width: 100, height: 50),
                        ),
                        Spacer(),
                        ColoredBox(
                          color: Color(0xFFF44336),
                          child: SizedBox(width: 100, height: 50),
                        ),
                      ],
                    ),
                    ColoredBox(
                      color: Color(0xFF4CAF50),
                      child: SizedBox(width: 100, height: 200),
                    ),
                  ],
                ),
              ),
            ),
            ColoredBox(
              color: Color(0xFFFFFFFF),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  children: [
                    Column(
                      children: [
                        ColoredBox(
                          color: Color(0xFF2196F3),
                          child: SizedBox(width: 100, height: 120),
                        ),
                        Spacer(),
                        ColoredBox(
                          color: Color(0xFFF44336),
                          child: SizedBox(width: 100, height: 120),
                        ),
                      ],
                    ),
                    ColoredBox(
                      color: Color(0xFF4CAF50),
                      child: SizedBox(width: 100, height: 200),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
