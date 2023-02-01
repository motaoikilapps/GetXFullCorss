import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxServices/Services/MyService.dart';
import 'package:getx/GetxServices/view/MyServiceView.dart';

void main() async {
  await Get.putAsync(() => MyService().init());
  runApp(GetMaterialApp(
    home: MyServicesView(),
  ));
}

/*
  GetServece:
        we use GetServeces to initeation varables or get data 
        with Future type , and we use it like controller,
        it has same defalt function like (Init,onColose,onReady)
  GetView :
  we use GetView instead of Mycontroller controller= Get.find();
*/