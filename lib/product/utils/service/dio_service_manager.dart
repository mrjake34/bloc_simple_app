import 'dart:io';

import 'package:bloc_simple_app/product/state/base/model/base_response_model.dart';
import 'package:bloc_simple_app/product/utils/service/iservice_manager.dart';
import 'package:dio/dio.dart';

final class DioServiceManager<T> extends IServiceManager<T> {
  late final Dio _dio;

  DioServiceManager() {
    _dio = Dio();
  }

  @override
  Future<BaseResponseModel<T>> get(String url) async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode == HttpStatus.ok) {
        return BaseResponseModel(data: response.data);
      }
      return BaseResponseModel(error: response.statusMessage);
    } on DioException catch (e) {
      return BaseResponseModel(error: e.message);
    }
  }
}
