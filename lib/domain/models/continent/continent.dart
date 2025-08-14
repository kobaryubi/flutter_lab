import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent.freezed.dart';
part 'continent.g.dart';

@freezed
abstract class Continent with _$Continent {
  const factory Continent({required String name, required String imageUrl}) =
      _Continent;

  factory Continent.fromJson(Map<String, Object?> json) =>
      _$ContinentFromJson(json);
}
