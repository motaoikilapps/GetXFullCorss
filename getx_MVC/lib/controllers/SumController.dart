import 'package:get/get.dart';

class SumController extends GetxController {
  RxInt numberOne = 0.obs, numberTow = 0.obs;
  int sum = 0;
  void incrementOne() {
    print("increment one");
    numberOne++;
    sum = int.parse(numberOne.toString()) + int.parse(numberTow.toString());
  }

  void incrementTow() {
    print("increment tow");
    numberTow++;
    sum = int.parse(numberOne.toString()) + int.parse(numberTow.toString());
  }

}
