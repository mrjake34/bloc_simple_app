import 'package:bloc_simple_app/product/state/base/model/base_response_model.dart';
import 'package:bloc_simple_app/product/utils/service/iservice_manager.dart';

import '../model/todos.dart';

final class TodoService {
  final IServiceManager<List<dynamic>> _serviceManager;

  TodoService(this._serviceManager);

  final _baseUrl = 'https://jsonplaceholder.typicode.com/todos/';

  Future<BaseResponseModel<List<Todos>>> getTodos() async {
    final response = await _serviceManager.get(_baseUrl);
    if (response.data != null) {
      final data =
          response.data?.map((e) => Todos.fromJson(e)).cast<Todos>().toList();
      return BaseResponseModel(data: data);
    } else {
      return BaseResponseModel(error: response.error);
    }
  }
}
