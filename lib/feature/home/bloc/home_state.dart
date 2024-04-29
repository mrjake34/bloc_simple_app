part of 'home_bloc.dart';

final class HomeState extends Equatable {
  const HomeState({this.todos, this.error});

  final List<Todos>? todos;
  final String? error;

  HomeState copyWith({
    List<Todos>? todos,
    String? error,
  }) {
    return HomeState(
      todos: todos ?? this.todos,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [todos, error];
}
