import 'package:get/get.dart';

class GetBuilderController extends GetxController {
  int count = 0;
  void increment() {
    count++;
    print(count);
    update();
  }

  void decrement() {
    count--;
    print(count);
    update();
  }
}
