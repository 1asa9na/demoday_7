import 'package:demoday_7/src/themes/images.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Image(
        image: AssetImage(ImageSources.logo),
        height: 40,
      ),
      label: Text(
        'Textile View',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.all(0)),
        overlayColor: MaterialStatePropertyAll<Color>(Color(0x00000000)),
      ),
    );
  }
}
