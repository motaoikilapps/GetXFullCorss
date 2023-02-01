import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('page four'),
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
                    Get.close(2);
                  },
                  child: Text("Close")),
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
