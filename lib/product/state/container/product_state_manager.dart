import 'package:bloc_simple_app/feature/home/model/todos.dart';
import 'package:bloc_simple_app/feature/home/service/todo_service.dart';
import 'package:get_it/get_it.dart';

abstract class ProductStateManager {
  final _getit = GetIt.instance;
  void setUp() {
    _getit.registerFactory(() => TodoService(_getit()));
  }
}
