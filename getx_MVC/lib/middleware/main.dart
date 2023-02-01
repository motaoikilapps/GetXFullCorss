import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/middleware/authMiddleware.dart';
import 'package:getx/middleware/middleware/staffMiddleware.dart';
import 'package:getx/middleware/view/Home.dart';
import 'package:getx/middleware/view/StaffView.dart';
import 'package:getx/middleware/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? preferences;

void main() async {
  preferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/login", page: () => LoginView()),
        GetPage(
            name: "/home",
            page: () => HomeView(),
            middlewares: [AuthMiddleware(), StaffMiddleware()]),
        GetPage(name: "/staff", page: () => StaffView())
      ],
    );
  }
}
