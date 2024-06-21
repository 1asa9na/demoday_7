import 'package:demoday_7/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:options_repository/options_repository.dart';

void main() {
  runApp(MultiRepositoryProvider(providers: [
    RepositoryProvider<OptionsRepository>(
      create: (context) => OptionsRepositoryImpl(),
    ),
  ], child: const App()));
}
