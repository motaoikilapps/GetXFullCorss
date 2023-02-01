import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetX%20Read%20controllers/Controllers/ObxController.dart';

class ObxView extends StatelessWidget {
  ObxView({super.key});

  ObxController controller = new ObxController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obx")),
      body: Center(
          child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => controller.decrement(),
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    controller.count.value.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButton(
                      onPressed: () => controller.increment(),
                      child: Icon(Icons.add)),
                ],
              ))),
    );
  }
}
