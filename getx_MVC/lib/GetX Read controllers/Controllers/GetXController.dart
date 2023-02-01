import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGetXcontroller extends GetxController {
  RxInt count = 0.obs;
  void increment() {
    count++;
    print(count);
  }

  void decrement() {
    count--;
    print(count);
  }
}
