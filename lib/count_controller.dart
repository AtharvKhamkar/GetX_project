import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var countC = 0.obs;
  void incrementC() {
    countC++;
  }
}
