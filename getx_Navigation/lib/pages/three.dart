import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('page three'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed("home");
                  },
                  child: Text("go to home page")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("tow");
                  },
                  child: Text("go to page tow")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("three");
                  },
                  child: Text("go to page three")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("four");
                  },
                  child: Text("go to page four")),
            ],
          ),
        ));
  }
}
