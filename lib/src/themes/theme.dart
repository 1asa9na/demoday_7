import 'package:demoday_7/src/themes/app_colors.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  useMaterial3: false,
  textTheme: textTheme,
  iconTheme: iconThemeData,
);

const textTheme = TextTheme(
  bodyLarge: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ),
  bodyMedium: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  displayLarge: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  ),
  displayMedium: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  ),
  displaySmall: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGray,
  ),
);

const iconThemeData = IconThemeData(size: 18);

const mainFontFamily = 'Open Sans';
