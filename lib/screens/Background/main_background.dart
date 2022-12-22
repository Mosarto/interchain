import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interchain/screens/Background/main_background_controller.dart';
import 'package:interchain/screens/Market/market.dart';
import 'package:interchain/screens/onboarding.dart';

class MainBackground extends StatefulWidget {
  const MainBackground({Key? key}) : super(key: key);

  @override
  State<MainBackground> createState() => _MainBackgroundState();
}

class _MainBackgroundState extends State<MainBackground> {
  final MainBackgroundController controller = Get.put(
    MainBackgroundController(),
  );

  final List<Widget> _pages = [
    const Onboarding(),
    const Market(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B0C0D),
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => Positioned(
                top: -20,
                left: -20,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 465),
                    curve: Curves.easeInOut,
                    height: controller.index.value == 0 ? 140 : 0,
                    width: controller.index.value == 0 ? 140 : 0,
                    decoration: controller.index.value == 0
                        ? const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff5200FF),
                                offset: Offset(
                                  20.0,
                                  20.0,
                                ),
                                blurRadius: 200.0,
                              ),
                            ],
                          )
                        : const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff5200FF),
                                offset: Offset(
                                  0.0,
                                  0.0,
                                ),
                                blurRadius: 0.0,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 465),
                curve: Curves.easeInOut,
                top: controller.index.value == 1
                    ? 10
                    : MediaQuery.of(context).size.height / 2,
                right: controller.index.value == 1 ? -210 : -110,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 265),
                    curve: Curves.easeInOut,
                    height: controller.index.value == 1 ? 600 : 300,
                    width: controller.index.value == 1 ? 600 : 300,
                    decoration: controller.index.value == 1
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff7A3CFF).withOpacity(0.6),
                                offset: const Offset(
                                  00.0,
                                  00.0,
                                ),
                                blurRadius: 300.0,
                              ),
                            ],
                          )
                        : const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff5200FF),
                                offset: Offset(
                                  20.0,
                                  20.0,
                                ),
                                blurRadius: 200.0,
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedOpacity(
                opacity: controller.transiton.value ? 0 : 1,
                duration: const Duration(milliseconds: 265),
                curve: Curves.easeInOut,
                child: _pages[controller.index.value],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
