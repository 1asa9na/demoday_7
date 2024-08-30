import 'package:api_client/api_client.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:demoday_7/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:options_repository/options_repository.dart';
import 'package:parameters_repository/parameters_repository.dart';
import 'package:response_repository/response_repository.dart';
import 'package:token_repository/token_repository.dart';

void main() async {
  final ApiClient apiClient = ApiClient(
      baseUrl:
          'http://localhost:8000');
  runApp(MultiRepositoryProvider(providers: [
    RepositoryProvider<OptionsRepository>(
      create: (context) => OptionsRepositoryImpl(),
    ),
    RepositoryProvider<ParametersRepository>(
      create: (context) => ParametersRepositoryImpl(),
    ),
    RepositoryProvider<ResponseRepository>(
      create: (context) => ResponseRepositoryImpl(apiClient: apiClient),
    ),
    RepositoryProvider<AuthenticationRepository>(
      create: (context) => AuthenticationRepositoryImpl(apiClient: apiClient),
    ),
    RepositoryProvider<TokenRepository>(
      create: (context) => TokenRepositoryImpl(),
    ),
  ], child: const App()));
}
