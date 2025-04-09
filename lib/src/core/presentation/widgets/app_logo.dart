import 'package:demoday_7/src/utils/themes/images.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final void Function()? route;
  const AppLogo({super.key, this.route});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: route,
      icon: const Image(
        image: AssetImage(ImageSources.logo),
        height: 40,
      ),
      label: Text(
        'Textile View',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(0)),
        overlayColor: WidgetStatePropertyAll<Color>(Color(0x00000000)),
      ),
    );
  }
}
