import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ControllerLifeCycle/controller/LifeCycleController.dart';
import 'package:getx/ControllerLifeCycle/view/LifeCycleView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        title: 'Material App',
        home: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () => Get.to(() => LifeCycleView()),
              child: Text("move to the widget"),
            ),
          ),
        ));
  }
}
