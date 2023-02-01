import 'package:flutter/material.dart';
import 'package:get/get.dart';
 import 'package:getx/lazyPut/controllers/lazyPutCntroller.dart';

class View11 extends StatelessWidget {
  View11({super.key});
  lazyPutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lazyPut'),
      ),
      body: Center(
        child: GetBuilder<lazyPutController>(
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
