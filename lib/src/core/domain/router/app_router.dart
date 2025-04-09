import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/login/login_page.dart';
import 'package:demoday_7/src/core/presentation/pages/authorization/signup/signup_page.dart';
import 'package:demoday_7/src/core/presentation/pages/home/home_page.dart';
import 'package:demoday_7/src/core/presentation/pages/profile/profile_page.dart';
import 'package:demoday_7/src/core/presentation/pages/search/search_page.dart';
import 'package:demoday_7/src/core/presentation/pages/service/service_page.dart';
import 'package:demoday_7/src/core/presentation/pages/navigation/navigation_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: NavigationRoute.page,
          children: [
            AutoRoute(path: HomePage.path, page: HomeRoute.page),
            AutoRoute(path: ServicePage.path, page: ServiceRoute.page),
            AutoRoute(path: LoginPage.path, page: LoginRoute.page),
            AutoRoute(path: SignupPage.path, page: SignupRoute.page),
            AutoRoute(path: ProfilePage.path, page: ProfileRoute.page),
            AutoRoute(path: SearchPage.path, page: SearchRoute.page),
          ],
        ),
      ];
}
