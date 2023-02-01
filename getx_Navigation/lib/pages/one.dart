import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:getx/pages/home.dart';
import 'package:getx/pages/three.dart';
import 'package:getx/pages/tow.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => OneState();
}

class OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('page one'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAll(Home());
                  },
                  child: Text("go to home page")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Tow());
                  },
                  child: Text("go to page tow")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Three());
                  },
                  child: Text("go to page three")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("go back")),
            ],
          ),
        ));
  }
}
