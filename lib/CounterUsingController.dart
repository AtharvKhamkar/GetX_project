import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/count_controller.dart';

class CounterUsingController extends StatelessWidget {
  const CounterUsingController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter using controller"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetX<CountController>(
              init: CountController(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.countC}",
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountController>().incrementC();
              },
              child: const Text("Increment"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Go to main"),
            )
          ],
        ),
      ),
    );
  }
}
