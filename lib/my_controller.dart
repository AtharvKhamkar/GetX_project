import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/student.dart';

class MyController extends GetxController {
  var student = Student(name: "Atharv", age: 21).obs;

  void convertToUpperCase() {
    student.update(
      (student) {
        student!.name = student.name.toString().toUpperCase();
      },
    );
  }

  void convertToLowerCase() {
    student.update(
      (student) {
        student!.name = student.name.toString().toLowerCase();
      },
    );
  }
}
