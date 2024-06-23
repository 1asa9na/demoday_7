import 'package:flutter/material.dart';

class HomeModel with ChangeNotifier {
  final Map<String, bool> _options = {
    'type': false,
    'breath': false,
    'stiffdrape': false,
  };

  final Map<String, dynamic> _parameters = {
    'Height': 0,
    'Density': 0,
    'Consist': 0,
    'Thread': 0,
    'is_fabric': 0,
    'is_knitwear': 0,
  };

  void changeOption(String key) {
    _options[key] = !_options[key]!;
    notifyListeners();
  }

  bool getOption(String key) {
    return _options[key]!;
  }

  void setParameter(String key, dynamic value, String type) {
    value = switch (type) {
      'bool' => int.parse(value),
      'double' => double.parse(value),
      'int' => int.parse(value),
      _ => String,
    };
    _parameters[key] = value;
  }

  dynamic getParameter(String key) {
    return _parameters[key];
  }
}
