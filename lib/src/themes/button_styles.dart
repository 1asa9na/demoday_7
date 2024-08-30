import 'package:demoday_7/src/themes/app_colors.dart';
import 'package:demoday_7/src/themes/theme.dart';
import 'package:flutter/material.dart';

final appBarOutlinedButtonStyle = ButtonStyle(
  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: MaterialStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const MaterialStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) return AppColors.black;
      return AppColors.white;
    },
  ),
  foregroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) return AppColors.white;
    return AppColors.black;
  }),
  backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.lightGray),
  textStyle: MaterialStatePropertyAll<TextStyle>(textTheme.bodyMedium!),
);

final normalSecondaryOutlinedButtonStyle = ButtonStyle(
  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: MaterialStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const MaterialStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) return AppColors.darkGray;
      return AppColors.lightGray;
    },
  ),
  foregroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) return AppColors.white;
    return AppColors.black;
  }),
  backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.white),
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.white);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }),
);

final activeSecondaryOutlinedButtonStyle = ButtonStyle(
  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: MaterialStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const MaterialStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) return AppColors.white;
      return AppColors.darkGray;
    },
  ),
  foregroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) return AppColors.black;
    return AppColors.white;
  }),
  backgroundColor: const MaterialStatePropertyAll<Color>(AppColors.darkGray),
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.black);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.white);
  }),
);

final normalSecondaryTextButtonStyle = ButtonStyle(
  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  overlayColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) return AppColors.white;
      return AppColors.lightGray;
    },
  ),
  foregroundColor: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) return AppColors.darkGray;
    return AppColors.black;
  }),
  textStyle: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.darkGray);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }),
);
