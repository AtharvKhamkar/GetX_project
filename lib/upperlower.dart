import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/student.dart';
import 'student.dart';
import 'package:getx_project/my_controller.dart';

class upperlower extends StatefulWidget {
  //create instance of controller

  MyController myController = Get.put(MyController());

  upperlower({super.key});

  @override
  State<upperlower> createState() => _upperlowerState();
}

class _upperlowerState extends State<upperlower> {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversioin of cases"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Name is ${myController.student.value.name}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                myController.convertToUpperCase();
              },
              child: const Text("Convert to upper case"),
            ),
            ElevatedButton(
              onPressed: () {
                myController.convertToLowerCase();
              },
              child: const Text("Convert to lower case"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go to Main"),
            ),
          ],
        ),
      ),
    );
  }
}
