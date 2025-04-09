import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/domain/router/app_router.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/signup/bloc/signup_bloc.dart';
import 'package:demoday_7/src/core/domain/auth_validator/validator.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:demoday_7/src/utils/themes/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignupPage extends StatefulWidget {
  static const String path = 'signup';
  const SignupPage({super.key});
  @override
  State<StatefulWidget> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameIndividualController = TextEditingController();
  final nameCompanyController = TextEditingController();
  bool amSupplier = false;
  bool amProducer = false;
  bool amIndividual = false;
  bool amCompany = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        switch (state) {
          case SignupSuccess(:final message):
            {
              Common.showSnackBar(context, message);
              context.router.push(const LoginRoute());
            }
          case Error():
            Common.showSnackBar(context, AppStrings.authErrorSnack);
          default:
            null;
        }
      },
      builder: (context, state) {
        return switch (state) {
          _ => Scaffold(
              body: Form(
                child: CustomScrollView(slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 112),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(
                            AppStrings.signUpHeadline,
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
                                        AppStrings.doHaveAccountQuestion,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall,
                                      ),
                                      const SizedBox(height: 20),
                                      FilledButton(
                                        onPressed: () => context.router
                                            .push(const LoginRoute()),
                                        style: activeSecondaryFilledButtonStyle,
                                        child: const Text(AppStrings.logIn),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 2,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 112),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                onChanged: (value) => setState(
                                    () => amSupplier = value! ? true : false),
                                value: amSupplier,
                              ),
                              Text(
                                AppStrings.amSupplier,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                onChanged: (value) => setState(
                                    () => amProducer = value! ? true : false),
                                value: amProducer,
                              ),
                              Text(
                                AppStrings.amProducer,
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 2,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 112),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    onChanged: (value) => setState(() =>
                                        amIndividual = value! ? true : false),
                                    value: amIndividual,
                                  ),
                                  Text(
                                    AppStrings.amIndividual,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  controller: nameIndividualController,
                                  cursorColor: AppColors.black,
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.black),
                                    ),
                                    labelStyle:
                                        TextStyle(color: AppColors.black),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.darkGray,
                                      ),
                                    ),
                                    labelText: AppStrings.labelIndividual,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Checkbox(
                                    onChanged: (value) => setState(() =>
                                        amCompany = value! ? true : false),
                                    value: amCompany,
                                  ),
                                  Text(
                                    AppStrings.amCompany,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: 400,
                                child: TextFormField(
                                  controller: nameCompanyController,
                                  cursorColor: AppColors.black,
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: AppColors.black),
                                    ),
                                    labelStyle:
                                        TextStyle(color: AppColors.black),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.darkGray,
                                      ),
                                    ),
                                    labelText: AppStrings.labelCompany,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 2,
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 112),
                    sliver: SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.signupSubline,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 20),
                          FilledButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                BlocProvider.of<SignupBloc>(context).add(
                                  SignupEvent.signup(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                              }
                            },
                            style: activeSecondaryFilledButtonStyle,
                            child: const Text(
                              AppStrings.signUp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
        };
      },
    );
  }
}
