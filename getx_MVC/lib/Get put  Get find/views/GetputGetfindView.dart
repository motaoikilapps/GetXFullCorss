import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Get%20put%20%20Get%20find/controlles/GetputGetfindViewController.dart';
 
class GetputGetfindView extends StatelessWidget {
  GetputGetfindView({super.key});

  GetputGetfindViewController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dependency Injection View"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<GetputGetfindViewController>(
                  builder: (controller) {
                    return Text(controller.numberOne.toString());
                  },
                ),
                Icon(Icons.add),
                GetBuilder<GetputGetfindViewController>(
                  builder: (controller) {
                    return Text(controller.numberTow.toString());
                  },
                ),
                Text("="),
                GetBuilder<GetputGetfindViewController>(
                  builder: (conroller) {
                    return Text((controller.numberOne + controller.numberTow)
                        .toString());
                  },
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incrementOne();
                },
                child: Text("inctement number one")),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incrementTow();
                },
                child: Text("inctement number Tow"))
          ],
        )));
  }
}
