import 'package:flutter/material.dart';

class AuthModel with ChangeNotifier {
  bool _isUserLogged = false;
  int _userProfilePercentage = 67;

  void setUserLoggedStatus(bool status) {
    _isUserLogged = status;
    notifyListeners();
  }

  bool getUserLoggedStatus() {
    return _isUserLogged;
  }

  void setUserProfilePercentage(int value) {
    _userProfilePercentage = value;
    notifyListeners();
  }

  int getUserProfilePercentage() {
    return _userProfilePercentage;
  }
}
