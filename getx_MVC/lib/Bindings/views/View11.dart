import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Bindings/controllers/MyBindingController.dart';

class View11 extends StatelessWidget {
  View11({super.key});
  MyBindingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binding view 1'),
      ),
      body: Center(
        child: GetBuilder<MyBindingController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.count.toString()),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () => controller.increment(), child: Text("add"))
              ],
            );
          },
        ),
      ),
    );
  }
}
