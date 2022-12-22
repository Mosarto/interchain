import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interchain/data/palletcolors.dart';
import 'package:interchain/screens/Background/main_background_controller.dart';
import 'package:interchain/screens/Buy/buy.dart';
import 'package:interchain/screens/Deposit/deposit.dart';
import 'package:interchain/screens/Market/market_controller.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  final mainBackgroundController = Get.find<MainBackgroundController>();

  final marketController = Get.put(MarketController());

  final List<Widget> _pages = [
    const Buy(),
    const Deposit(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: SizedBox(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      mainBackgroundController.setIndex(0);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Market',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      color: pallet.texto,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: const Color.fromARGB(20, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => AnimatedAlign(
                    duration: const Duration(milliseconds: 265),
                    curve: Curves.easeInOut,
                    alignment: marketController.deposit.value == false
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 265),
                      curve: Curves.easeInOut,
                      width: marketController.change.value == false
                          ? MediaQuery.of(context).size.width / 2.5
                          : MediaQuery.of(context).size.width / 3,
                      margin: EdgeInsets.symmetric(
                        vertical:
                            marketController.change.value == false ? 0 : 5,
                      ),
                      height: marketController.change.value == false ? 40 : 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: pallet.segundaria,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  marketController.setChante(false);
                                  marketController.setIndex(0);
                                  mainBackgroundController.setDeposit(false);
                                });
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  'Trade',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        marketController.deposit.value == false
                                            ? pallet.buttoncolortext
                                            : Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  marketController.setChante(true);
                                  marketController.setIndex(1);
                                  mainBackgroundController.setDeposit(true);
                                });
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  'Deposit',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        marketController.deposit.value == false
                                            ? Colors.white
                                            : pallet.buttoncolortext,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Obx(
            () => AnimatedOpacity(
              opacity: marketController.transiton.value ? 0 : 1,
              duration: const Duration(milliseconds: 265),
              curve: Curves.easeInOut,
              child: _pages[marketController.index.value],
            ),
          ),
        ],
      ),
    );
  }
}
