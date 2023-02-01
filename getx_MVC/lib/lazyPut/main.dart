import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Get%20put%20%20Get%20find/views/HomeView.dart';
 import 'package:getx/lazyPut/controllers/lazyPutCntroller.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => lazyPutController(), fenix: true);

    return GetMaterialApp(title: 'Material App', home: HomeView());
  }
}
