import 'package:flutter/material.dart';

final class Common {
  static void showSnackBar(context, content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(content)),
    );
  }
}
