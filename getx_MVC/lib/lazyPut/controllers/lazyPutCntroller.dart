import 'package:get/get.dart';

class lazyPutController extends GetxController {
  int count = 0;
  increment() {
    count++;
    print(count);
    update();
  }
}
