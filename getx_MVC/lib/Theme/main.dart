import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      theme: MyThemes.CustomDarkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Hello World'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class MyThemes {
  static ThemeData CustomLightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: Colors.green),
      accentColor: Colors.amber,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.red))));
  static ThemeData CustomDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.cyan,
      titleTextStyle: TextStyle(color: Colors.red, fontSize: 30),
    ),
  );
}
