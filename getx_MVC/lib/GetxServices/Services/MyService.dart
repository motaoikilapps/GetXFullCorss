import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {
  late SharedPreferences preferences;
  late RxInt count;
  Future<MyService> init() async {
    preferences = await SharedPreferences.getInstance();
    count = ((preferences.getInt("count")) ?? 0).obs;
    return this;
  }

  void incremant() {
    
    preferences.setInt("count", ++this.count.value);
  }
}
