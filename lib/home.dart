import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'NextScreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.blue.shade400, fontSize: 30),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/nextScreen/1234");
              },
              child: const Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("back to Main"),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
