import 'package:demoday_7/src/themes/app_strings.dart';

final class Validator {
  static String? emailValidator(String? value) {
    RegExp pattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (value == null || value.isEmpty) {
      return AppStrings.emptyEmail;
    } else if (!pattern.hasMatch(value)) {
      return AppStrings.invalidEmail;
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    RegExp pattern = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    if (value == null || value.isEmpty) {
      return AppStrings.emptyPassword;
    } else if (!pattern.hasMatch(value)) {
      return AppStrings.invalidPassword;
    }
    return null;
  }
}
