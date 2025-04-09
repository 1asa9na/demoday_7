import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/domain/router/app_router.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/login/bloc/login_bloc.dart';
import 'package:demoday_7/src/core/domain/auth_validator/validator.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:demoday_7/src/utils/themes/common.dart';
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
              context.router.push(const ServiceRoute());
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
              body: Form(
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 112),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 40),
                            Text(
                              AppStrings.loginHeadline,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(
                                  width: 320,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        validator: (value) =>
                                            Validator.emailValidator(value),
                                        controller: emailController,
                                        cursorColor: AppColors.black,
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.black),
                                          ),
                                          labelStyle:
                                              TextStyle(color: AppColors.black),
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
                                            borderSide: BorderSide(
                                                color: AppColors.black),
                                          ),
                                          labelStyle:
                                              TextStyle(color: AppColors.black),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: AppColors.darkGray,
                                            ),
                                          ),
                                          labelText: AppStrings.passwordLabel,
                                        ),
                                        obscureText: true,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 200),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border:
                                        Border.all(color: AppColors.lightGray),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppStrings.doNotHaveAccountQuestion,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                        const SizedBox(height: 20),
                                        FilledButton(
                                          onPressed: () => context.router
                                              .push(const SignupRoute()),
                                          style:
                                              activeSecondaryFilledButtonStyle,
                                          child: const Text(AppStrings.signUp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            FilledButton(
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
                              style: activeSecondaryFilledButtonStyle,
                              child: const Text(AppStrings.logIn),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        };
      },
    );
  }
}
