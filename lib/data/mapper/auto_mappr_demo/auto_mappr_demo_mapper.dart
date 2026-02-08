import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:flutter_lab/data/mapper/auto_mappr_demo/auto_mappr_demo_mapper.auto_mappr.dart';
import 'package:flutter_lab/domain/entity/auto_mappr_demo/source_models.dart';
import 'package:flutter_lab/domain/entity/auto_mappr_demo/target_models.dart';

/// Mapper demonstrating auto_mappr features: field renaming, custom fields,
/// whenNull defaults, nested object mapping, and TypeConverter.
@AutoMappr([
  MapType<SourcePerson, TargetPerson>(
    fields: [
      Field.from('age', from: 'ageInYears'),
      Field.custom(
        'displayName',
        custom: AutoMapprDemoMapper.computeDisplayName,
      ),
      Field('nickname', whenNull: 'N/A'),
    ],
  ),
  MapType<SourceAddress, TargetAddress>(),
  MapType<SourceEmployee, TargetEmployee>(
    fields: [
      Field.custom(
        'skillCount',
        custom: AutoMapprDemoMapper.computeSkillCount,
      ),
    ],
  ),
])
class AutoMapprDemoMapper extends $AutoMapprDemoMapper {
  const AutoMapprDemoMapper();

  /// Computes the display name by combining first and last name.
  static String computeDisplayName(SourcePerson source) =>
      '${source.firstName} ${source.lastName}';

  /// Computes the number of skills from the source employee.
  static int computeSkillCount(SourceEmployee source) => source.skills.length;
}
