import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Argement&ShowRoute/view/view1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Argement'),
      ),
      body: Center(
          child: InkWell(
        splashColor: Colors.amber,
        onTap: () {
          Get.to(() => View1(), arguments: {"name": "Motaoikil"});
        },
        child: Text(
          "Move to view 1 and passte argement",
          style: TextStyle(
            fontSize: 20.0,
          ),
          textAlign: TextAlign.center,
        ),
      )),
    );
  }
}
