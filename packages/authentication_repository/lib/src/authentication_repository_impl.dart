import 'dart:convert';
import 'dart:io';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';

final class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final ApiClient _apiClient;

  AuthenticationRepositoryImpl({required ApiClient apiClient})
      : _apiClient = apiClient;
  @override
  Future<String> login(Map<String, String> loginData) async {
    final Response<dynamic> response = await _apiClient.dio.post(
      '/login',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: jsonEncode(loginData),
    );

    return response.data['token'];
  }

  @override
  Future<String> signup(Map<String, String> loginData) async {
    final Response<dynamic> response = await _apiClient.dio.post(
      '/signup',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: jsonEncode(loginData),
    );
    return response.data['messsage'];
  }
}
