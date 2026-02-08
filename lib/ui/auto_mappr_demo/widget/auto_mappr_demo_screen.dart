import 'package:flutter/widgets.dart';
import 'package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.dart';
import 'package:flutter_lab/domain/entity/auto_mappr_demo/source_models.dart';
import 'package:flutter_lab/domain/entity/auto_mappr_demo/target_models.dart';
import 'package:flutter_lab/ui/core/ui/app_bar.dart';
import 'package:flutter_lab/ui/core/ui/layout.dart';

/// Screen demonstrating auto_mappr features: field renaming, custom fields,
/// whenNull defaults, nested object mapping, list conversion, and computed
/// fields.
class AutoMapprDemoScreen extends StatelessWidget {
  const AutoMapprDemoScreen({super.key});

  @override
  Widget build(BuildContext context) => const Layout(
    appBar: AppBar(title: Text('auto_mappr demo')),
    child: _Body(),
  );
}

class _Body extends StatelessWidget {
  const _Body();

  static const _mapper = AutoMapprDemoMapper();

  static const _sourcePerson = SourcePerson(
    id: 1,
    firstName: 'John',
    lastName: 'Doe',
    ageInYears: 30,
    role: SourceRole.alien,
  );

  static const _sourcePersonWithNickname = SourcePerson(
    id: 2,
    firstName: 'Jane',
    lastName: 'Smith',
    ageInYears: 25,
    nickname: 'Janey',
    role: SourceRole.student,
  );

  static const _sourceEmployee = SourceEmployee(
    name: 'Alice',
    address: SourceAddress(
      street: '123 Main St',
      city: 'Springfield',
      zipCode: '62701',
    ),
    skills: ['Dart', 'Flutter', 'Kotlin'],
  );

  @override
  Widget build(BuildContext context) {
    final targetPerson = _mapper.convert<SourcePerson, TargetPerson>(
      _sourcePerson,
    );
    final targetPersonWithNickname = _mapper
        .convert<SourcePerson, TargetPerson>(
          _sourcePersonWithNickname,
        );
    final targetEmployee = _mapper.convert<SourceEmployee, TargetEmployee>(
      _sourceEmployee,
    );
    final sourcePersonList = [_sourcePerson, _sourcePersonWithNickname];
    final targetPersonList = _mapper.convertList<SourcePerson, TargetPerson>(
      sourcePersonList,
    );
    final enumMappings = SourceRole.values.map(
      (source) => (
        source: source,
        target: _mapper.convert<SourceRole, TargetRole>(source),
      ),
    );

    return ListView(
      padding: const .all(16),
      children: [
        _DemoSection(
          title: 'Source Person',
          children: [
            _FieldRow(label: 'id', value: '${_sourcePerson.id}'),
            _FieldRow(label: 'firstName', value: _sourcePerson.firstName),
            _FieldRow(label: 'lastName', value: _sourcePerson.lastName),
            _FieldRow(
              label: 'ageInYears',
              value: '${_sourcePerson.ageInYears}',
            ),
            _FieldRow(label: 'nickname', value: '${_sourcePerson.nickname}'),
            _FieldRow(label: 'role', value: _sourcePerson.role.name),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Target Person (rename + custom + whenNull)',
          children: [
            _FieldRow(label: 'id', value: '${targetPerson.id}'),
            _FieldRow(label: 'firstName', value: targetPerson.firstName),
            _FieldRow(label: 'lastName', value: targetPerson.lastName),
            _FieldRow(label: 'age', value: '${targetPerson.age}'),
            _FieldRow(label: 'displayName', value: targetPerson.displayName),
            _FieldRow(label: 'nickname', value: targetPerson.nickname),
            _FieldRow(label: 'role', value: targetPerson.role.name),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Source Person (with nickname)',
          children: [
            _FieldRow(label: 'id', value: '${_sourcePersonWithNickname.id}'),
            _FieldRow(
              label: 'firstName',
              value: _sourcePersonWithNickname.firstName,
            ),
            _FieldRow(
              label: 'lastName',
              value: _sourcePersonWithNickname.lastName,
            ),
            _FieldRow(
              label: 'ageInYears',
              value: '${_sourcePersonWithNickname.ageInYears}',
            ),
            _FieldRow(
              label: 'nickname',
              value: '${_sourcePersonWithNickname.nickname}',
            ),
            _FieldRow(
              label: 'role',
              value: _sourcePersonWithNickname.role.name,
            ),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Target Person (with nickname)',
          children: [
            _FieldRow(label: 'id', value: '${targetPersonWithNickname.id}'),
            _FieldRow(
              label: 'firstName',
              value: targetPersonWithNickname.firstName,
            ),
            _FieldRow(
              label: 'lastName',
              value: targetPersonWithNickname.lastName,
            ),
            _FieldRow(label: 'age', value: '${targetPersonWithNickname.age}'),
            _FieldRow(
              label: 'displayName',
              value: targetPersonWithNickname.displayName,
            ),
            _FieldRow(
              label: 'nickname',
              value: targetPersonWithNickname.nickname,
            ),
            _FieldRow(
              label: 'role',
              value: targetPersonWithNickname.role.name,
            ),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Source Employee',
          children: [
            _FieldRow(label: 'name', value: _sourceEmployee.name),
            _FieldRow(
              label: 'address.street',
              value: _sourceEmployee.address.street,
            ),
            _FieldRow(
              label: 'address.city',
              value: _sourceEmployee.address.city,
            ),
            _FieldRow(
              label: 'address.zipCode',
              value: _sourceEmployee.address.zipCode,
            ),
            _FieldRow(
              label: 'skills',
              value: _sourceEmployee.skills.join(', '),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Target Employee (nested + custom)',
          children: [
            _FieldRow(label: 'name', value: targetEmployee.name),
            _FieldRow(
              label: 'address.street',
              value: targetEmployee.address.street,
            ),
            _FieldRow(
              label: 'address.city',
              value: targetEmployee.address.city,
            ),
            _FieldRow(
              label: 'address.zipCode',
              value: targetEmployee.address.zipCode,
            ),
            _FieldRow(label: 'skills', value: targetEmployee.skills.join(', ')),
            _FieldRow(
              label: 'skillCount',
              value: '${targetEmployee.skillCount}',
            ),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'List Conversion',
          children: [
            _FieldRow(
              label: 'Source count',
              value: '${sourcePersonList.length}',
            ),
            _FieldRow(
              label: 'Target count',
              value: '${targetPersonList.length}',
            ),
          ],
        ),
        const SizedBox(height: 16),
        _DemoSection(
          title: 'Enum Mapping (whenSourceIsNull)',
          children: [
            for (final mapping in enumMappings)
              _FieldRow(
                label: mapping.source.name,
                value: mapping.target.name,
              ),
          ],
        ),
      ],
    );
  }
}

class _DemoSection extends StatelessWidget {
  const _DemoSection({required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      Text(title, style: const TextStyle(fontWeight: .bold, fontSize: 16)),
      const SizedBox(height: 8),
      ...children,
    ],
  );
}

class _FieldRow extends StatelessWidget {
  const _FieldRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const .only(bottom: 4),
    child: Row(
      crossAxisAlignment: .start,
      children: [
        SizedBox(
          width: 160,
          child: Text('$label:', style: const TextStyle(fontWeight: .w600)),
        ),
        Expanded(child: Text(value)),
      ],
    ),
  );
}
