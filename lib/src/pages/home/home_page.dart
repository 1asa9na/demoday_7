import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static const String path = '';

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
    ));
  }
}
