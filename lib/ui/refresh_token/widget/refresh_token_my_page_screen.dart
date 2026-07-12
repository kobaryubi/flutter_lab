import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen showing the signed-in user's profile fetched with the access
/// token.
///
/// When the API rejects the token as expired, the refresh flow re-issues
/// the access token cookie through a WebView and the fetch is retried.
class RefreshTokenMyPageScreen extends StatelessWidget {
  const RefreshTokenMyPageScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('My Page')),
    child: Text('My Page'),
  );
}
