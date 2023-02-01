import 'package:get/get.dart';

class LifeCycleController extends GetxController {
  @override
  void onInit() {
    print("init");
    super.onInit();
  }

  @override
  void onReady() {
    print("Ready");
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    print("Close");
    // TODO: implement onClose
    super.onClose();
  }
}
