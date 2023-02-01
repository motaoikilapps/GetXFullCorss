import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetX%20Read%20controllers/Views/ObxView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: ObxView(),
    );
  }
}


/*
**
    getBuilder => Fast and not custames the mimory but it is not auto rebuild
    getX => auto rebuild but not fast and custames the mimory
    Obx => auto rebuild but not fast and custames the mimory

    //deffirant between GetX and Obx:
    with Getx you can just use one controller,
    but in Obx you can use multipale controllers in same time
**
*/