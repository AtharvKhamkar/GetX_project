import 'package:flutter/material.dart';
import 'package:get/get.dart';

class unknownRoute extends StatelessWidget {
  const unknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UnknownRoute"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is unkownRoute",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
