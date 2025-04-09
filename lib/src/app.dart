import 'package:authentication_repository/authentication_repository.dart';
import 'package:demoday_7/src/core/data/models/auth_model/auth_model.dart';
import 'package:demoday_7/src/core/domain/router/app_router.dart';
import 'package:demoday_7/src/core/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:demoday_7/src/core/presentation/pages/profile/profile_cubit.dart';
import 'package:demoday_7/src/features/get_results/bloc/get_results_bloc.dart';
import 'package:demoday_7/src/features/input_parameters/bloc/input_parameters_bloc.dart';
import 'package:demoday_7/src/features/select_file/bloc/select_file_bloc.dart';
import 'package:demoday_7/src/features/select_options/bloc/select_options_bloc.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/login/bloc/login_bloc.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/signup/bloc/signup_bloc.dart';
import 'package:demoday_7/src/core/data/models/service_model/service_model.dart';
import 'package:demoday_7/src/utils/themes/theme.dart';
import 'package:parameters_repository/parameters_repository.dart';
import 'package:profile_prefs_repository/parameters_repository.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:options_repository/options_repository.dart';
import 'package:response_repository/response_repository.dart';
import 'package:token_repository/token_repository.dart';

import 'core/presentation/pages/service/bloc/service_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ServiceBloc>(
          create: (context) => ServiceBloc()
            ..add(const ServiceEvent.started(
              picture: 0,
              numeric: 0,
            )),
        ),
        BlocProvider<SelectOptionsBloc>(
          create: (context) => SelectOptionsBloc(
              optionsRepository:
                  RepositoryProvider.of<OptionsRepository>(context))
            ..add(const SelectOptionsEvent.started()),
        ),
        BlocProvider<SelectFileBloc>(
          create: (context) =>
              SelectFileBloc()..add(const SelectFileEvent.started()),
        ),
        BlocProvider<InputParametersBloc>(
          create: (context) => InputParametersBloc(
              parametersRepository:
                  RepositoryProvider.of<ParametersRepository>(context))
            ..add(const InputParametersEvent.started()),
        ),
        BlocProvider<GetResultsBloc>(
          create: (context) => GetResultsBloc(
              responseRepository:
                  RepositoryProvider.of<ResponseRepository>(context),
              tokenRepository: RepositoryProvider.of<TokenRepository>(context))
            ..add(const GetResultsEvent.started()),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(
            authRepository:
                RepositoryProvider.of<AuthenticationRepository>(context),
            tokenRepository: RepositoryProvider.of<TokenRepository>(context),
          )..add(const LoginEvent.started()),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(
              authRepository:
                  RepositoryProvider.of<AuthenticationRepository>(context))
            ..add(const SignupEvent.started()),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(
              profilePrefsRepository:
                  RepositoryProvider.of<ProfilePrefsRepository>(context))
            ..add(const ProfileEvent.started()),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ServiceModel()),
          ChangeNotifierProvider(create: (context) => AuthModel()),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter().config(),
          debugShowCheckedModeBanner: false,
          theme: theme,
        ),
      ),
    );
  }
}
