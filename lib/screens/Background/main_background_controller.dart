import 'package:get/get.dart';

class MainBackgroundController extends GetxController {
  RxInt index = 0.obs;
  RxBool transiton = false.obs;

  RxBool deposit = false.obs;

  void setIndex(int value) {
    transiton.value = true;
    Future.delayed(const Duration(milliseconds: 265), () {
      index.value = value;
      transiton.value = false;
    });
  }

  void setDeposit(bool value) {
    deposit.value = value;
  }
}
