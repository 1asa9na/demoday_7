import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/pages/navigation/widgets/app_logo.dart';
import 'package:demoday_7/src/themes/app_colors.dart';
import 'package:demoday_7/src/themes/app_strings.dart';
import 'package:demoday_7/src/themes/button_styles.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  static const String path = '/';
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  static const double appBarHeight = 56.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(appBarHeight),
        child: ColoredBox(
          color: AppColors.lightGray,
          child: SizedBox(
            height: appBarHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppLogo(),
                  OutlinedButton(
                    onPressed: () {},
                    style: appBarOutlinedButtonStyle,
                    child: const Text(
                      AppStrings.logIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: AutoRouter(),
    );
  }
}
