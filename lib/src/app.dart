import 'package:demoday_7/src/app_router.dart';
import 'package:demoday_7/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: MaterialApp.router(
        routerConfig: AppRouter().config(),
        debugShowCheckedModeBanner: false,
        theme: theme,
      ),
    );
  }
}
