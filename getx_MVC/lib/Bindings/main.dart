import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Bindings/MybindingClass.dart';
import 'package:getx/Bindings/views/HomeView.dart';
import 'package:getx/Bindings/views/View11.dart';
import 'package:getx/Bindings/views/View22.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeView(),
      // initialBinding: MyBindingClass(),
      getPages: [
        GetPage(name: "/", page: () => HomeView()),
        GetPage(
            name: "/view11", page: () => View11(), binding: MyBindingClass()),
        GetPage(name: "/view22", page: () => View22())
      ],
    );
  }
}
