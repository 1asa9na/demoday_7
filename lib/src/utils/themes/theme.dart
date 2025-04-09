import 'package:demoday_7/src/utils/themes/app_colors.dart';
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
  bodySmall: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
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
  headlineLarge: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
  headlineSmall: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  ),
  labelMedium: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  ),
  labelLarge: TextStyle(
    fontFamily: mainFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  ),
);

const iconThemeData = IconThemeData(size: 18);

const mainFontFamily = 'Open Sans';
