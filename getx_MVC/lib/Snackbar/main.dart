import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
            child: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            Get.snackbar(
              "title",
              "message",
              snackPosition: SnackPosition.BOTTOM,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              duration: Duration(seconds: 1),
              icon: Icon(Icons.accessibility_sharp),
            );
          },
          child: Text(
            "Click me!",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        )),
      ),
    );
  }
}
