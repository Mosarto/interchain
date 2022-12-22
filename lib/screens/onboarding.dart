import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interchain/data/palletcolors.dart';
import 'package:interchain/screens/Background/main_background_controller.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final mainBackgroundController = Get.find<MainBackgroundController>();

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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Interchain',
              style: TextStyle(
                color: pallet.texto,
                fontWeight: FontWeight.w600,
                fontSize: 24,
                fontFamily: 'Chillax',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'by Tendermain',
              style: TextStyle(
                color: pallet.texto,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Chillax',
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: RichText(
              text: TextSpan(
                text: 'Zero fee payments on ',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: pallet.texto,
                  fontSize: 36,
                ),
                children: [
                  WidgetSpan(
                    child: GradientText(
                      'Cosmos',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: pallet.texto,
                        fontSize: 36,
                      ),
                      colors: const [
                        Color(0xff899CFF),
                        Color(0xff924FFF),
                        Color(0xffF442B5),
                        Color(0xffD61672),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              'No platform fees, no commissions,\nno hassle.',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: pallet.texto,
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 2,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Transform.rotate(
                  angle: pi / 32,
                  child: Container(
                    height: MediaQuery.of(context).size.width / 2.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          const Color(0xff3705a3).withOpacity(0.9),
                          const Color(0xff3705a3),
                          const Color(0xff8951FF),
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2.1,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        image: const DecorationImage(
                          image: AssetImage('assets/imgs/gradient.jpg'),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomRight,
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              top: 20,
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/scan.svg',
                                  height: 34,
                                  width: 34,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 4),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Secured by',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w500,
                                          color: pallet.texto,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'Interchain Security 2.0',
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          color: pallet.texto,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '****',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontWeight: FontWeight.w500,
                                    color: pallet.texto,
                                    fontSize: 28,
                                    letterSpacing: 1.8,
                                    shadows: [
                                      const Shadow(
                                        color: Colors.black26,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '2023',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontWeight: FontWeight.w500,
                                    color: pallet.texto,
                                    fontSize: 20,
                                    letterSpacing: 1.8,
                                    shadows: [
                                      const Shadow(
                                        color: Colors.black26,
                                        offset: Offset(
                                          1.0,
                                          1.0,
                                        ),
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(
                                  flex: 2,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                          left: 1,
                          right: 1,
                          bottom: 1,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff140824),
                                Color(0xff000000),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Cosmos Hub',
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w400,
                              color: pallet.texto,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          GestureDetector(
            onTap: (() {
              mainBackgroundController.setIndex(1);
            }),
            child: Container(
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: pallet.primaria,
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: Text(
                'Create a wallet',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.texto,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: Text(
              'Import account',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: pallet.texto,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
