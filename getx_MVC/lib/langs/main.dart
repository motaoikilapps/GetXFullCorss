import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/langs/lang/lang.dart';
import 'package:getx/langs/view/LangView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: LongTranslations(),
        locale: Locale("en", "US"),
        title: 'Material App',
        home: LangView());
  }
}
