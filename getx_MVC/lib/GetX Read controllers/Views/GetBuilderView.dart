import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetX%20Read%20controllers/Controllers/GetBuilderController.dart';

class GetBuilderView extends StatelessWidget {
  const GetBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetBuilder"),
      ),
      body: Center(
          child: GetBuilder(
              init: GetBuilderController(),
              builder: ((controller) => Row(
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
                        controller.count.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      ElevatedButton(
                          onPressed: () => controller.increment(),
                          child: Icon(Icons.add)),
                    ],
                  )))),
    );
  }
}
