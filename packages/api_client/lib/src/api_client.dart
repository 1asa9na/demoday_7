import 'dart:developer';

import 'package:api_client/src/errors/network_error.dart';
import 'package:dio/dio.dart';

class ApiClient implements Interceptor {
  late Dio _dio;
  late String _baseUrl;
  String get baseUrl => _baseUrl;
  Dio get dio => _dio;
  ApiClient({required baseUrl}) {
    _baseUrl = baseUrl;
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (status) {
          return status != null && status >= 200 && status < 300 ||
              status == 304;
        },
      ),
    )..interceptors.add(this);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final networkError = NetworkError(err);
    log(err.toString());
    handler.next(networkError);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
