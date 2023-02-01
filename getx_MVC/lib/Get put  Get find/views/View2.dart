import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Get%20put%20%20Get%20find/controlles/GetputGetfindViewController.dart';
 
class View2 extends StatelessWidget {
  View2({super.key});
  GetputGetfindViewController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("view 2")),
      body: Center(
        child: Text(controller.numberOne.toString()),
      ),
    );
  }
}
