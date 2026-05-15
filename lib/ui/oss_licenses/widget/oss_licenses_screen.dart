import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/oss_licenses.dart' as oss;
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Packages displayed on the OSS licenses screen: every resolved package
/// except SDK packages.
final List<oss.Package> _displayedPackages = oss.allDependencies
    .where((package) => !package.isSdk)
    .toList(growable: false);

/// Screen that lists every shipped runtime package (direct + transitive)
/// from the generated [oss.allDependencies] constant.
///
/// Tapping a row will navigate to the license detail screen
/// (wired up alongside route registration).
class OssLicensesScreen extends StatelessWidget {
  const OssLicensesScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('OSS licenses')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => ListView.builder(
    itemCount: _displayedPackages.length,
    itemBuilder: (context, index) =>
        _PackageRow(package: _displayedPackages[index]),
  );
}

/// Single row showing a package's name and version.
class _PackageRow extends StatelessWidget {
  const _PackageRow({required this.package});

  final oss.Package package;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Column(
      crossAxisAlignment: .start,
      spacing: 4,
      children: [
        Text(package.name),
        Text(
          '${package.version ?? '-'}  '
          '${package.spdxIdentifiers.join(', ')}',
        ),
      ],
    ),
  );
}
