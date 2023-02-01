import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Bindings/controllers/MyBindingController.dart';

class View22 extends StatelessWidget {
  View22({super.key});
  MyBindingController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Binding view 2'),
        ),
        body: Center(child: Text(controller.count.toString())));
  }
}
