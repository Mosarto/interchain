import 'package:get/get.dart';

class MarketController extends GetxController {
  RxBool change = false.obs;

  RxBool deposit = false.obs;

  RxInt index = 0.obs;

  RxBool transiton = false.obs;

  void setIndex(int value) {
    transiton.value = true;
    Future.delayed(const Duration(milliseconds: 265), () {
      index.value = value;
      transiton.value = false;
    });
  }

  void setChante(bool value) {
    deposit.value = value;
    change.value = true;
    Future.delayed(const Duration(milliseconds: 265), () {
      change.value = false;
    });
  }
}
