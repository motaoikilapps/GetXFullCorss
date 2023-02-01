import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/SumController.dart';

class SumView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tp sum'),
      ),
      body: Center(
          child: GetX<SumController>(
        init: SumController(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(controller.numberOne.toString()),
                  Icon(Icons.add),
                  Text(controller.numberTow.toString()),
                  Text("="),
                  Text(controller.sum.toString()),
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
          );
        },
      )),
    );
  }
}
