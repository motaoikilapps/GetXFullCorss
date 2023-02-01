import 'package:get/get.dart';

class GetputGetfindViewController extends GetxController {
  int numberOne = 0, numberTow = 0;
  void incrementOne() {
    print("increment one");
    numberOne++;
    update();
  }

  void incrementTow() {
    print("increment tow");
    numberTow++;
    update();
  }
}
