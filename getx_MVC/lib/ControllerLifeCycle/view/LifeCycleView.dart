import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ControllerLifeCycle/controller/LifeCycleController.dart';

class LifeCycleView extends StatelessWidget {
  const LifeCycleView({super.key});

  @override
  Widget build(BuildContext context) {
    /////////////////
    Get.put(LifeCycleController());
    /////////////////
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller life cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('look at the console'),
            SizedBox(
              height: 14,
            ),
            ElevatedButton(
                onPressed: () => Get.back(), child: Text("Test close"))
          ],
        ),
      ),
    );
  }
}
