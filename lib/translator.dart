import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/Messages.dart';
import 'package:getx_project/translate_controller.dart';

class translator extends StatelessWidget {
  Translate_controller translate_controller = Get.put(Translate_controller());
  translator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Internationalization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 25, color: Colors.purple),
            ),
            ElevatedButton(
              onPressed: (() {
                translate_controller.changeLanguage('hi', 'IN');
              }),
              child: const Text("Hindi"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                translate_controller.changeLanguage('fr', 'FR');
              },
              child: const Text("French"),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                translate_controller.changeLanguage('en', 'US');
              },
              child: const Text("English"),
            ),
          ],
        ),
      ),
    );
  }
}
