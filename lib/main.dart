import 'package:api_client/api_client.dart';
import 'package:demoday_7/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:options_repository/options_repository.dart';
import 'package:parameters_repository/parameters_repository.dart';
import 'package:response_repository/response_repository.dart';

void main() {
  final ApiClient apiClient = ApiClient(
      baseUrl:
          'https://virtserver.swaggerhub.com/TODARENKOV_1/clothview/1.0.0');
  runApp(MultiRepositoryProvider(providers: [
    RepositoryProvider<OptionsRepository>(
      create: (context) => OptionsRepositoryImpl(),
    ),
    RepositoryProvider<ParametersRepository>(
      create: (context) => ParametersRepositoryImpl(),
    ),
    RepositoryProvider<ResponseRepository>(
      create: (context) => ResponseRepositoryImpl(apiClient: apiClient),
    )
  ], child: const App()));
}
