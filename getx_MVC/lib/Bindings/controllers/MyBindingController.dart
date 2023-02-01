import 'package:get/get.dart';

class MyBindingController extends GetxController {
  int count = 0;
  increment() {
    count++;
    print(count);
    update();
  }
}
