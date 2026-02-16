import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/platform/view_type_names.dart';

/// Displays a native platform button.
///
/// On iOS, embeds a `UIButton` via `UiKitView`.
/// On Android, embeds a `Button` via `AndroidView`.
class NativeButton extends StatelessWidget {
  const NativeButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const UiKitView(viewType: ViewTypeNames.nativeButton);
    }

    return const AndroidView(viewType: ViewTypeNames.nativeButton);
  }
}
