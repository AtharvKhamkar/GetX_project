import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PressedController extends GetxController {
  void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counterButton = (prefs.getInt('counter') ?? 0) + 1;
    print('pressed $counterButton times.');
    await prefs.setInt('counter', counterButton);
  }
}
