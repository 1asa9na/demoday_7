import 'dart:convert';

import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart' as dio;
import 'package:response_repository/src/models/models.dart';
import 'package:response_repository/src/response_repository.dart';

final class FakeResponseRepositoryImpl implements ResponseRepository {
  @override
  Future<ResponseBody> fetch(
      {required Map<String, dynamic> data, required String option}) async {
    await Future.delayed(const Duration(seconds: 1));
    return const ResponseBody(
      option: 'stiffdrape',
      option_response: [
        OptionResponse(
            name: 'Драпируемость', option: 'drape', result: '31.375511'),
        OptionResponse(
            name: 'Жёсткость', option: 'rigidity', result: '68.998665'),
      ],
    );
  }
}

final class ResponseRepositoryImpl implements ResponseRepository {
  final ApiClient _apiClient;

  static const Map<String, String> endpoints = {
    'type': '/predict-textile-classification',
    'breath': '/predict-breathability',
    'stiffdrape': '/predict-drape-rigidity',
  };

  static const Map<String, List<String>> parameters = {
    'type': ['imageBytes'],
    'breath': ['imageBytes'],
    'stiffdrape': [
      'Height',
      'Density',
      'Consist',
      'Thread',
      'is_fabric',
      'is_knitwear',
    ],
  };

  ResponseRepositoryImpl({required ApiClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<ResponseBody> fetch(
      {required Map<String, dynamic> data, required String option}) async {
    final dio.Response<dynamic> response = await _apiClient.dio.post(
      endpoints[option]!,
      options: dio.Options(
        responseType: dio.ResponseType.json,
        contentType: dio.Headers.jsonContentType,
      ),
      data: {for (var item in parameters[option]!) item: data[item]},
    );

    final result = ResponseBody.fromJson(jsonDecode(response.data));
    return result;
  }
}