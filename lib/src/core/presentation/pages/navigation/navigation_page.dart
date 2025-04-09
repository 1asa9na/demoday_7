import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/domain/router/app_router.dart';
import 'package:demoday_7/src/core/presentation/widgets/app_logo.dart';
import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/app_strings.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  static const String path = '/';
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  static const double appBarHeight = 200.0;
  PageRouteInfo? initialPopupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(appBarHeight),
        child: ColoredBox(
          color: AppColors.lightGray,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              const SizedBox(width: 20),
              AppLogo(route: () {
                context.router.push(const HomeRoute());
              }),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: PopupMenuButton<PageRouteInfo>(
                  onSelected: (value) => context.router.push(value),
                  initialValue: initialPopupValue,
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<PageRouteInfo>>[
                    const PopupMenuItem<PageRouteInfo>(
                      value: SearchRoute(),
                      child: Text(AppStrings.popupSearchLabel),
                    ),
                    const PopupMenuItem<PageRouteInfo>(
                      value: ServiceRoute(),
                      child: Text(AppStrings.popupServiceLabel),
                    ),
                  ],
                  child: Text(
                    AppStrings.navServicesLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.navInfoLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.navDealsLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  onPressed: () => context.router.push(const ProfileRoute()),
                  child: Text(
                    AppStrings.navProfileLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.navHelpLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.navTranslateLabel,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const AutoRouter(),
    );
  }
}
