import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery.freezed.dart';

@freezed
abstract class Battery with _$Battery {
  const factory Battery({
    required int level,
  }) = _Battery;
}
