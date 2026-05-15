import 'package:flutter/widgets.dart';
import 'package:flutter_lab/gen/oss_licenses.dart' as oss;
import 'package:flutter_lab/ui/core/themes/colors.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Packages displayed on the OSS licenses screen: every resolved package
/// except SDK packages.
final List<oss.Package> _displayedPackages = oss.allDependencies
    .where((package) => !package.isSdk)
    .toList(growable: false);

/// Screen that lists every shipped runtime package (direct + transitive)
/// from the generated [oss.allDependencies] constant, showing each
/// package's full metadata and license text inline.
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
  Widget build(BuildContext context) => ListView.separated(
    itemCount: _displayedPackages.length,
    separatorBuilder: (_, _) => const SizedBox(
      height: 1,
      child: ColoredBox(color: AppColors.gray1),
    ),
    itemBuilder: (context, index) =>
        _PackageRow(package: _displayedPackages[index]),
  );
}

/// Row showing every field of a package: name, version, description,
/// homepage, repository, authors, SPDX identifiers, and full license text.
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
        Text('name: ${package.name}'),
        Text('version: ${package.version ?? '-'}'),
        Text('description: ${package.description}'),
        Text('homepage: ${package.homepage ?? '-'}'),
        Text('repository: ${package.repository ?? '-'}'),
        Text('authors: ${package.authors.join(', ')}'),
        Text('spdx: ${package.spdxIdentifiers.join(', ')}'),
        Text('license:\n${package.license ?? '-'}'),
      ],
    ),
  );
}
