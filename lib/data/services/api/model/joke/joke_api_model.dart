import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_api_model.freezed.dart';
part 'joke_api_model.g.dart';

@freezed
abstract class JokeApiModel with _$JokeApiModel {
  const factory JokeApiModel({
    required String type,
    required String setup,
    required String punchline,
    required int id,
  }) = _JokeApiModel;

  factory JokeApiModel.fromJson(Map<String, Object?> json) =>
      _$JokeApiModelFromJson(json);
}
