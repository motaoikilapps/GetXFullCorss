import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxServices/Services/MyService.dart';

class MyServicesView extends GetView<MyService> {
  MyServicesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services with GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyService>(
              builder: (con) {
                return Text(con.count.toString());
              },
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incremant();
                },
                child: Text("Incremanent")),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.preferences.clear();
                  controller.count.value = 0;
                },
                child: Text("Clear sharedPreferences"))
          ],
        ),
      ),
    );
  }
}
