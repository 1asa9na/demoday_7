import 'package:flutter/material.dart';

final theme = ThemeData(
  useMaterial3: false,
  textTheme: textTheme,
  iconTheme: iconThemeData,
);

const textTheme = TextTheme(
  bodyMedium: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  ),
  displayLarge: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w600,
  ),
  displayMedium: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  ),
  displaySmall: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);

const iconThemeData = IconThemeData(size: 24);

const mainFontFamily = 'Open Sans';
