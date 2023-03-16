import 'dart:developer';

import 'package:flutter/material.dart';

class ShowPasswordProvider extends ChangeNotifier {
  bool _showPass = true;

  bool get hidePass => _showPass;

  void showpassFunction() {
    _showPass = !_showPass;
    notifyListeners();
  }

  // bool _counter = true;

  // bool get counter => _counter;

  // void incrementCounter() {
  //   _counter = !_counter;
  //   notifyListeners();
  // }
}
