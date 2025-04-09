import 'package:flutter/material.dart';

class ServiceModel with ChangeNotifier {
  final Map<String, bool> _options = {
    'type': false,
    'breath': false,
    'stiffdrape': false,
  };

  final Map<String, String> _optionValues = {
    'type': 'picture',
    'breath': 'picture',
    'stiffdrape': 'numeric',
  };

  final Map<String, dynamic> _parameters = {
    'Height': 0.1,
    'Density': 0,
    'Consist': 0,
    'Thread': 0,
    'is_fabric': 0,
    'is_knitwear': 0,
    'img': null,
  };

  final Map<String, Map<int, String>> _parametersDropDownEntries = {
    'Consist': {
      1: 'Пряжа',
      2: 'Сильно скрученная (креповая) нить',
      3: 'Любая нить, кроме креповой',
      4: 'Смесь нить и пряжа',
    },
    'Thread': {
      1: 'Хлопок',
      2: 'Лён',
      3: 'Шерсть',
      4: 'Шёлк',
      5: 'Вискоза и вискозоподобные',
      6: 'Синтетические и ацетатные',
      7: 'Смесь с преобладанием синтетических волокон',
      8: 'Смесь с преобладанием натуральных и/или вискозных волокон',
      9: 'Смесь с одинаковым количеством синтетических и натуральных и/или вискозоподобных волокон',
    },
  };

  final Map<String, String> _parametersMetrics = {
    'Height': 'миллиметры, мм',
    'Density': 'проценты, %',
  };

  void changeOption(String key) {
    _options[key] = !_options[key]!;
    if (_options[key]!) {
      _optionCount[_optionValues[key]!] =
          _optionCount[_optionValues[key]!]! + 1;
    } else {
      _optionCount[_optionValues[key]!] =
          _optionCount[_optionValues[key]!]! - 1;
    }
    notifyListeners();
  }

  int getOptionCount(String key) => _optionCount[key]!;

  final Map<String, int> _optionCount = {
    'picture': 0,
    'numeric': 0,
  };

  bool getOption(String key) {
    return _options[key]!;
  }

  String? getParameterMetric(String key) => _parametersMetrics[key];

  Map<int, String>? getDropDownEntries(String key) =>
      _parametersDropDownEntries[key];

  Map<String, bool> getOptions() => _options;

  Map<String, dynamic> getParameters() => _parameters;

  void setParameter(String key, dynamic value, String type) {
    value = switch (type) {
      'bool' => value ?? 0,
      'choose' => value ?? 1,
      'double' => double.parse(value),
      'int' => int.parse(value),
      _ => value,
    };
    _parameters[key] = value;
  }

  dynamic getParameter(String key) {
    return _parameters[key];
  }
}
