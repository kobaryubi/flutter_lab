import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:screen_protector/screen_protector.dart';

/// Hook that enables screenshot prevention on mount and disables on unmount.
///
/// Uses [ScreenProtector] directly to manage the lifecycle of screenshot
/// prevention tied to the widget's lifetime.
void useScreenshotPrevention() {
  useEffect(() {
    ScreenProtector.preventScreenshotOn();
    return ScreenProtector.preventScreenshotOff;
  }, const []);
}
