// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JokeApiModel _$JokeApiModelFromJson(Map<String, dynamic> json) =>
    _JokeApiModel(
      type: json['type'] as String,
      setup: json['setup'] as String,
      punchline: json['punchline'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$JokeApiModelToJson(_JokeApiModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'setup': instance.setup,
      'punchline': instance.punchline,
      'id': instance.id,
    };
