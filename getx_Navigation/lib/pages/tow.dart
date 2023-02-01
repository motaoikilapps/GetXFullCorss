import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/four.dart';
import 'package:getx/pages/home.dart';
import 'package:getx/pages/three.dart';

class Tow extends StatefulWidget {
  const Tow({super.key});

  @override
  State<Tow> createState() => _TowState();
}

class _TowState extends State<Tow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('page Tow'),
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
                    Get.to(Four());
                  },
                  child: Text("go to page four")),
            ],
          ),
        ));
  }
}
