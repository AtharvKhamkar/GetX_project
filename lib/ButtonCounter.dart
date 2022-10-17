import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/count_controller.dart';
import 'package:getx_project/pressedController.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key});

  @override
  Widget build(BuildContext context) {
    Get.putAsync<PressedController>(() async => await PressedController());
    return Scaffold(
      appBar: AppBar(title: Text("Dependency Injection")),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find<PressedController>();
                    Get.find<PressedController>().incrementCounter();
                  },
                  child: Text("Click me"))
            ],
          ),
        ),
      ),
    );
  }
}
