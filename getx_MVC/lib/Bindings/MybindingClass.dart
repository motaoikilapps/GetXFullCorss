import 'package:get/get.dart';
import 'package:getx/Bindings/controllers/MyBindingController.dart';

class MyBindingClass implements Bindings {
  @override
  void dependencies() {
    Get.put(MyBindingController(), permanent: true);
  }
}
