import 'package:get/get.dart';
import 'package:interchain/data/model.dart';

class BuyController extends GetxController {
  RxBool swap = false.obs;

  RxList<Coin> coins = [
    Coin(
      name: 'ATOM',
      seller: 'Cosmos Hub',
      image: 'atom.png',
      price: '15',
      priceChange: '150.6',
      reversePrice: '15',
    ),
    Coin(
      name: 'USDC',
      seller: 'Axelar',
      image: 'USDC.png',
      price: '150.6',
      priceChange: '15',
      reversePrice: '150.6',
    ),
  ].obs;

  void setSwap() {
    swap.value = true;
    Future.delayed(const Duration(milliseconds: 265), () {
      coins.value = coins.reversed.toList();
      swap.value = false;
    });
  }
}
