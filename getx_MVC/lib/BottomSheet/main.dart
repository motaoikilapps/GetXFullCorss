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
          title: const Text('Bottom Sheet '),
        ),
        body: Center(
            child: InkWell(
          splashColor: Colors.amber,
          onTap: () {
            Get.bottomSheet(
                Container(
                  height: 200,
                  color: Colors.white,
                  child: Center(child: Text("Bottom sheet")),
                ),
                enterBottomSheetDuration: Duration(seconds: 1),
                exitBottomSheetDuration: Duration(seconds: 5));
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
