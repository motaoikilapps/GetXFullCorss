import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Is Platforms',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(context.isPhone);
                  },
                  child: Text("is a phone")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(GetPlatform.isAndroid);
                  },
                  child: Text("is an andaroid")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(context.isTablet);
                  },
                  child: Text("is a table")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(GetPlatform.isWeb);
                  },
                  child: Text("is web")),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(Get.width);
                    // print(context.isLandscape);
                  },
                  child: Text(" get with")),
              SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
