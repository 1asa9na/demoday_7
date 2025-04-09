import 'package:demoday_7/src/utils/themes/app_colors.dart';
import 'package:demoday_7/src/utils/themes/theme.dart';
import 'package:flutter/material.dart';

final appBarOutlinedButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const WidgetStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.black;
      return AppColors.white;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.white;
    return AppColors.black;
  }),
  backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.lightGray),
  textStyle: WidgetStatePropertyAll<TextStyle>(textTheme.bodyMedium!),
);

final normalSecondaryOutlinedButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const WidgetStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.darkGray;
      return AppColors.lightGray;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.white;
    return AppColors.black;
  }),
  backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.white),
  textStyle: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.white);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }),
);

final activeSecondaryOutlinedButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  side: const WidgetStatePropertyAll<BorderSide>(
    BorderSide(
      width: 1.0,
      color: AppColors.black,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.white;
      return AppColors.darkGray;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.black;
    return AppColors.white;
  }),
  backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.darkGray),
  textStyle: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.black);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.white);
  }),
);

final normalSecondaryTextButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.white;
      return AppColors.lightGray;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.darkGray;
    return AppColors.black;
  }),
  textStyle: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.darkGray);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }),
);

final normalSecondaryFilledButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.darkGray;
      return AppColors.lightGray;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.white;
    return AppColors.black;
  }),
  backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.white),
  textStyle: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.white);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.black);
  }),
);

final activeSecondaryFilledButtonStyle = ButtonStyle(
  padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(horizontal: 12, vertical: 6),
  ),
  shape: WidgetStatePropertyAll<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  overlayColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.pressed)) return AppColors.white;
      return AppColors.darkGray;
    },
  ),
  foregroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) return AppColors.black;
    return AppColors.white;
  }),
  backgroundColor: const WidgetStatePropertyAll<Color>(AppColors.darkGray),
  textStyle: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.pressed)) {
      return textTheme.bodyMedium!.copyWith(color: AppColors.black);
    }
    return textTheme.bodyMedium!.copyWith(color: AppColors.white);
  }),
);
