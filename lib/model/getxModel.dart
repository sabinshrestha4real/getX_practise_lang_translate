import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends GetxController {
  // Locale _data = Locale('en');

  // Locale get data => _data;
  bool _changeCondition = true;
  int _value = 0;

  int get value => _value;
  bool get changeCondition => _changeCondition;

  void increament() {
    _value += 1;
    update();
  }

  void decreament() {
    if (_value == 0) {
      _value = 0;
    } else {
      _value -= 1;
    }

    update();
  }

  void reset() {
    _value = 0;

    update();
  }

  void changeBoolValue(bool boolValue) {
    _changeCondition = boolValue;
    update(); //notifies the change
  }
}
