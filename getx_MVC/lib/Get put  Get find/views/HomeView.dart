import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Get%20put%20%20Get%20find/views/GetputGetfindView.dart';
import 'package:getx/Get%20put%20%20Get%20find/views/View2.dart';
 

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home view"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.to(() => GetputGetfindView()),
                child: Text("Dependency")),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () => Get.to(() => View2()), child: Text("view 2"))
          ],
        ),
      ),
    );
  }
}
