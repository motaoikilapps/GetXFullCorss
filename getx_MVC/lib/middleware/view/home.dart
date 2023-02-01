import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/main.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home view")),
      body: Center(
        child: ElevatedButton(
          child: Text("log out"),
          onPressed: () {
            preferences!.clear();
            Get.offAllNamed("/login");
          },
        ),
      ),
    );
  }
}
