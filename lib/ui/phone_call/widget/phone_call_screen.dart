import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:url_launcher/url_launcher.dart';

/// Screen that shows a phone number and launches the OS phone app with
/// that number when the number is tapped, using the `tel:` URL scheme.
///
/// Note: the iOS Simulator has no phone app, so verify on a real device.
class PhoneCallScreen extends StatelessWidget {
  const PhoneCallScreen({super.key});

  /// Dummy phone number displayed on screen.
  static const _phoneNumber = '03-1234-5678';

  @override
  Widget build(BuildContext context) {
    /// Launches the phone app with [_phoneNumber] via the `tel:` scheme.
    Future<void> handleTapPhoneNumber() async {
      final uri = Uri(scheme: 'tel', path: _phoneNumber);

      await launchUrl(uri);
    }

    return Layout(
      appBar: const AppBar(title: Text('Phone Call')),
      child: Center(
        child: GestureDetector(
          onTap: handleTapPhoneNumber,
          child: const Text(_phoneNumber),
        ),
      ),
    );
  }
}
