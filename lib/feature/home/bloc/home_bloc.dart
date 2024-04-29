import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_simple_app/feature/home/service/todo_service.dart';
import 'package:equatable/equatable.dart';

import '../model/todos.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TodoService _service;
  HomeBloc(this._service) : super(const HomeState()) {
    on<FetchTodosEvent>(_fetchTodos);
  }

  FutureOr<void> _fetchTodos(
      FetchTodosEvent event, Emitter<HomeState> emit) async {
    final response = await _service.getTodos();
    if (response.data != null && response.data!.isNotEmpty) {
      emit(state.copyWith(todos: response.data));
    } else {
      emit(state.copyWith(error: response.error));
    }
  }
}
