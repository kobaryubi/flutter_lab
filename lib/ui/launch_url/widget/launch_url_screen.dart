import 'package:flutter/widgets.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/button.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlScreen extends StatelessWidget {
  const LaunchUrlScreen({required this.url, super.key});

  final String url;

  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse(url);

    return Layout(
      appBar: const AppBar(
        title: Text('launch url'),
      ),
      child: Center(
        child: Button(
          label: 'launch url',
          onTap: () async {
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
        ),
      ),
    );
  }
}
