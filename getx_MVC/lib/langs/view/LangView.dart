import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangView extends StatelessWidget {
  const LangView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lang view'.tr),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.locale!.languageCode == "en"
                  ? Get.updateLocale(Locale("ar"))
                  : Get.updateLocale(Locale("en"));
            },
            child: Text('Hello'.tr)),
      ),
    );
  }
}
