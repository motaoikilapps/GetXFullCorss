import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/four.dart';
import 'package:getx/pages/three.dart';
import 'package:getx/pages/tow.dart';
import 'package:getx/pages/home.dart';
import 'package:getx/pages/one.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: Home(),
      getPages: [
        GetPage(name: "/one", page: () => One()),
        GetPage(
          name: "/tow",
          page: () => Tow(),
        ),
        GetPage(
          name: "/three",
          page: () => Three(),
        ),
        GetPage(name: "/four", page: () => Four()),
        GetPage(name: "/home", page: () => Home())
      ],
    );
  }
}

/*
*****
  get navigation
    // using page name page()
    Get.to(page()) push to page "page"
    Get.off(page()) push replacement
    Get.offAll(page()) remove all routes and push to build new widget
    //  using route name
    Get.toNamed("Name") push to page with name
    Get.offNamed("Name") push replacement
    Get.offAllNamed("Name") remove all routes and push to build new widget
    //
    Get.back() go back to last route
    Get.Close() close app
*****
*/