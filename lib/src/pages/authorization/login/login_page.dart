import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/app_router.dart';
import 'package:demoday_7/src/pages/authorization/login/bloc/login_bloc.dart';
import 'package:demoday_7/src/pages/authorization/validator.dart';
import 'package:demoday_7/src/themes/app_colors.dart';
import 'package:demoday_7/src/themes/app_strings.dart';
import 'package:demoday_7/src/themes/button_styles.dart';
import 'package:demoday_7/src/themes/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  static const String path = 'login';
  const LoginPage({super.key});
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (BuildContext context, LoginState state) {
        switch (state) {
          case LoginSuccess():
            {
              Common.showSnackBar(context, AppStrings.loginSuccessSnack);
              context.router.push(const HomeRoute());
            }
          case Error():
            Common.showSnackBar(context, AppStrings.authErrorSnack);
          default:
            null;
        }
      },
      builder: (BuildContext context, LoginState state) {
        return switch (state) {
          _ => Scaffold(
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 204, vertical: 20),
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: AppColors.lightGray),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 300),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(AppStrings.loginHeadline),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) =>
                                Validator.emailValidator(value),
                            controller: emailController,
                            cursorColor: AppColors.black,
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                              labelStyle: TextStyle(color: AppColors.black),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.darkGray,
                                ),
                              ),
                              labelText: AppStrings.emailLabel,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) =>
                                Validator.passwordValidator(value),
                            controller: passwordController,
                            cursorColor: AppColors.black,
                            decoration: const InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                              labelStyle: TextStyle(color: AppColors.black),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.darkGray,
                                ),
                              ),
                              labelText: AppStrings.passwordLabel,
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                BlocProvider.of<LoginBloc>(context).add(
                                  LoginEvent.login(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                              }
                            },
                            style: normalSecondaryOutlinedButtonStyle,
                            child: const Text(AppStrings.logIn),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              context.router.push(const SignupRoute());
                            },
                            style: normalSecondaryTextButtonStyle,
                            child: const Text(AppStrings.signUp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        };
      },
    );
  }
}
