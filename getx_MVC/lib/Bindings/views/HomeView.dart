import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Bindings/views/View11.dart';
import 'package:getx/Bindings/views/View22.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home View")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed("view11"), child: Text("View 1")),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed("view22"), child: Text("View 2")),
          ],
        ),
      ),
    );
  }
}
