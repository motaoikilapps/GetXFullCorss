import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/main.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login view")),
      body: Center(
        child: ElevatedButton(
          child: Text("Login"),
          onPressed: () async {
            preferences?.setInt("id", 2);
            preferences?.setBool("staff", true);
            // preferences!.clear();
            Get.offAllNamed("home");
          },
        ),
      ),
    );
  }
}
