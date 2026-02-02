// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  description: json['description'] as String,
  id: json['id'] as String,
  completed: json['completed'] as bool? ?? false,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'description': instance.description,
  'id': instance.id,
  'completed': instance.completed,
};
