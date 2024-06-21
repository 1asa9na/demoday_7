import 'package:flutter/material.dart';

class HomeModel with ChangeNotifier {
  final Map<String, bool> _options = {
    'type': false,
    'breath': false,
    'stiffdrape': false,
  };

  void changeOption(String key) {
    _options[key] = !_options[key]!;
    notifyListeners();
  }

  bool getOption(String key) {
    return _options[key]!;
  }
}
