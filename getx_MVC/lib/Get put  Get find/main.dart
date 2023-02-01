import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Get%20put%20%20Get%20find/controlles/GetputGetfindViewController.dart';
import 'package:getx/Get%20put%20%20Get%20find/views/HomeView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GetputGetfindViewController controller =
        Get.put(GetputGetfindViewController());
    return GetMaterialApp(home: HomeView());
  }
/*
  ***
      Dependency Injection
            the dependency injection is a tool can be help to inisialized controller one time
      Get.put:
      help to save data in the cach memory
        M1:
        use this lign in any page
        ControllerName controller =Get.put(ControllerName());
        M2:
        use this lign just in main page for initialized your control
        ControllerName controller =Get.put(ControllerName());
        use this lign to call your controller
        ControllerName controller=Get.find();
      Get.lazyPut:
        we use Get.lazyPut as same we use Get.put but it can't be save data
  ***
  methods
      Get.put:
          =>  called in the first time you inisalized
          =>  permanent:: if ture the data saved else no
      Get.lazyPut
          =>  called just is the progremme needs
          => fenix:: if ture the controller is not be deleted in memory
*/
}
