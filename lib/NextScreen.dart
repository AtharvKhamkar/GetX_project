import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NextScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['someValue']}"),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go to Home Screen"))
          ],
        ),
      ),
    );
  }
}
