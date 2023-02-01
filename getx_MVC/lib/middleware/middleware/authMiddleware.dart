import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/main.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority {
    print("Auth priority");
    return 2;
  }

  @override
  RouteSettings? get redirect {
    print("Auth Middleware");
    if (preferences!.getInt("id") == null) {
      return RouteSettings(name: "/login");
    }
  }
}
