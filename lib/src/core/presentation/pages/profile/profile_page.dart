import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/data/models/auth_model/auth_model.dart';
import 'package:demoday_7/src/core/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:demoday_7/src/core/presentation/pages/profile/profile_cubit.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:demoday_7/src/utils/themes/button_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  static const String path = 'profile';

  const ProfilePage({super.key});
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final prefController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProfilePercentage =
        context.watch<AuthModel>().getUserProfilePercentage();
    context.read<ProfileCubit>().setPref(AppStrings.fakeProfileTextFieldLabel);
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return switch (state) {
        Success(:final prefs) => Scaffold(
            body: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 112),
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(
                            AppStrings.profileHeadline,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(height: 20),
                          if (context.watch<ProfileCubit>().state != null)
                            SizedBox(
                              width: 320,
                              child: TextFormField(
                                controller: prefController,
                                cursorColor: AppColors.black,
                                decoration: InputDecoration(
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.black),
                                  ),
                                  labelStyle:
                                      const TextStyle(color: AppColors.black),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: AppColors.darkGray,
                                    ),
                                  ),
                                  labelText:
                                      context.watch<ProfileCubit>().state,
                                ),
                              ),
                            ),
                          const SizedBox(height: 20),
                          FilledButton(
                            onPressed: () => context
                                .read<AuthModel>()
                                .setUserProfilePercentage(
                                    (userProfilePercentage + 17) % 100),
                            style: activeSecondaryFilledButtonStyle,
                            child: const Text(AppStrings.profileSave),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          AppStrings.profileFilledLabel,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(
                              value: userProfilePercentage / 100,
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "${(userProfilePercentage).round()}%",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView(
                            children: prefs.expand((e) {
                              return [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    e.name,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                ),
                                ...e.prefs.map(
                                  (pref) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      pref,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  height: 20,
                                  color: AppColors.lightGray,
                                ),
                              ];
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        _ => const SizedBox.shrink(),
      };
    });
  }
}
