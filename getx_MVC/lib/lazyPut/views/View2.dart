import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/lazyPut/controllers/lazyPutCntroller.dart';

class View22 extends StatelessWidget {
  View22({super.key});
  lazyPutController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('lazyPut'),
        ),
        body: Center(child: Text(controller.count.toString())));
  }
}
