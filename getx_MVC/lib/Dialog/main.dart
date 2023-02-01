import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dialog view'),
        ),
        body: Center(
            child: ElevatedButton(
                child: Text("Dialog"),
                onPressed: () => Get.defaultDialog(
                    // Default thank
                    // title: "Alert",
                    // middleText: "contant",
                    // textCancel: "cancel",
                    // textConfirm: "confirm",
                    // custom
                    confirm: ElevatedButton(
                        onPressed: () => print("confirm"),
                        child: Text("cofirm")),
                    cancel: ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("Cancel")),
                    actions: [
                      MaterialButton(
                        onPressed: () => print("actions"),
                        child: Text(
                          "action",
                        ),
                        splashColor: Colors.red,
                      )
                    ],
                    backgroundColor: Colors.amber,
                    content: Text("confirm Text")))),
      ),
    );
  }
}
