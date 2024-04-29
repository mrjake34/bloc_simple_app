// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todos _$TodosFromJson(Map<String, dynamic> json) => Todos(
      userId: (json['userId'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$TodosToJson(Todos instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
