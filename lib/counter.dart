import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  var count = 0.obs;

  void increment() {
    count++;
  }

  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Count value is $count",
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                increment();
              },
              child: const Text(
                "Increment",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Back to Main",
                  style: TextStyle(fontSize: 15),
                ))
          ],
        ),
      ),
    );
  }
}
