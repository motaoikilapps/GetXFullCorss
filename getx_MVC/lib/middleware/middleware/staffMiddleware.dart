import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/main.dart';

class StaffMiddleware extends GetMiddleware {
  @override
  int? get priority {
    print("Staff priority");
    return 1;
  }

  @override
  RouteSettings? get redirect {
    print("Staff Middleware");
    if (preferences!.getInt("id") !=null &&
        preferences!.getBool("staff") == true) {
      return RouteSettings(name: "/staff");
    }
  }
}
