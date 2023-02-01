import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/lazyPut/views/View1.dart';
import 'package:getx/lazyPut/views/View2.dart';
 
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
                onPressed: () => Get.to(() => View11()), child: Text("View 1")),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () => Get.to(() => View22()), child: Text("View 2")),
          ],
        ),
      ),
    );
  }
}
