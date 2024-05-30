import 'package:auto_route/auto_route.dart';

class Navlink {
  final String title;
  final PageRouteInfo<void> route;
  final String path;

  Navlink({
    required this.title,
    required this.route,
    required this.path,
  });
}
