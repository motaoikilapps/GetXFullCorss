import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/one.dart';
import 'package:getx/pages/three.dart';
import 'package:getx/pages/tow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int test = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(One());
                  },
                  child: Text("go to page one")),
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
                  child: Text("go to page there")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("go back")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () => setState(() {
                        test++;
                      }),
                  child: Text(test.toString()))
            ],
          ),
        ));
  }
}
