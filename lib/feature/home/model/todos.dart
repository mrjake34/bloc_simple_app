import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todos.g.dart';

@JsonSerializable()
final class Todos extends Equatable {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  const Todos({this.userId, this.id, this.title, this.completed});

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);

  Map<String, dynamic> toJson() => _$TodosToJson(this);

  @override
  List<Object?> get props => [
        userId,
        id,
        title,
        completed,
      ];
}
