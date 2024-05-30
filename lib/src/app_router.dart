import 'package:auto_route/auto_route.dart';
import 'package:demoday_7/src/pages/home/home_page.dart';
import 'package:demoday_7/src/pages/navigation/navigation_page.dart';

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
          ],
        ),
      ];
}
