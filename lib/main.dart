import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/CounterUsingController.dart';
import 'package:getx_project/Messages.dart';
import 'package:getx_project/translator.dart';
import 'package:getx_project/upperlower.dart';
import 'home.dart';
import 'NextScreen.dart';
import 'unknownRoute.dart';
import 'counter.dart';
import 'student.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation",
      initialRoute: "/",
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/home", page: () => const Home()),
        GetPage(name: "/nextScreen/:someValue", page: () => const NextScreen()),
        GetPage(name: "/counter", page: () => Counter()),
        GetPage(name: "/case", page: () => upperlower()),
        GetPage(
            name: "/CounterController",
            page: () => const CounterUsingController()),
        GetPage(name: "/translator", page: () => translator())
      ],
      unknownRoute:
          GetPage(name: '/notfound', page: () => const unknownRoute()),
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("navigatioin"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                child: const Text("Home"),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/counter");
                },
                child: const Text("Counter"),
              ),
              const SizedBox(
                height: 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/CounterController");
                },
                child: const Text("counter using controller"),
              ),
              const SizedBox(
                height: 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/case");
                },
                child: const Text(
                  "case switching",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/translator");
                },
                child: const Text("Translator"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
