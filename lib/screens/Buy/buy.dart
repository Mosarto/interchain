import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interchain/data/palletcolors.dart';
import 'package:interchain/screens/Buy/buy_controller.dart';
import 'package:rive/rive.dart' as rive;

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  final buyController = Get.put(BuyController());

  late rive.RiveAnimationController _controller;

  bool _isPlaying = false;

  bool deposit = false;

  @override
  void initState() {
    super.initState();
    _controller = rive.OneShotAnimation(
      'Timeline 1',
      autoplay: false,
      onStop: () => setState(() => _isPlaying = false),
      onStart: () => setState(() => _isPlaying = true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: RichText(
            text: TextSpan(
              text: 'Balance: ',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: pallet.texto,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: '82.5',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: pallet.hypertexto,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 232,
          child: Stack(
            children: [
              Obx(
                () => AnimatedContainer(
                  height: 110,
                  padding: const EdgeInsets.all(16),
                  duration: const Duration(milliseconds: 265),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pallet.buttoncolortext,
                    border: Border.all(
                      color: buyController.swap.value == false
                          ? pallet.primaria
                          : pallet.primaria.withOpacity(0.6),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text(
                              'From',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 22,
                              width: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: pallet.buttoncolor,
                              ),
                              child: Text(
                                'Max',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              height: 22,
                              width: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: pallet.buttoncolor,
                              ),
                              child: Text(
                                'Half',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      AnimatedOpacity(
                        opacity: buyController.swap.value ? 0 : 1,
                        duration: const Duration(milliseconds: 265),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/imgs/${buyController.coins[0].image}',
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Text(
                                            buyController.coins[0].name,
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/arrow-down.svg',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      buyController.coins[0].seller,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: pallet.buttoncolortext2,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      buyController.coins[0].price,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      '≈ \$${buyController.coins[0].priceChange}',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromARGB(
                                            125, 255, 255, 255),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Container(
                  height: 104,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 126),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pallet.buttoncolortext,
                  ),
                  child: AnimatedOpacity(
                    opacity: buyController.swap.value ? 0 : 1,
                    duration: const Duration(milliseconds: 265),
                    child: Column(
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Text(
                                'To',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/imgs/${buyController.coins[1].image}',
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          Text(
                                            buyController.coins[1].name,
                                            style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/arrow-down.svg',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      buyController.coins[1].seller,
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color: pallet.buttoncolortext2,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '≈ ${buyController.coins[1].reversePrice}',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: (() {
                    _isPlaying ? null : _controller.isActive = true;
                    buyController.setSwap();
                  }),
                  child: Obx(
                    () => AnimatedContainer(
                      height: buyController.swap.value == false ? 48 : 54,
                      width: buyController.swap.value == false ? 48 : 54,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12),
                      duration: const Duration(milliseconds: 265),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: buyController.swap.value == false
                            ? const [
                                BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ]
                            : const [
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(0, 4),
                                  blurRadius: 8,
                                ),
                              ],
                        gradient: buyController.swap.value == false
                            ? const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff7A42F1),
                                  Color(0xff480EC2),
                                ],
                              )
                            : const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff480EC2),
                                  Color(0xff7A42F1),
                                ],
                              ),
                      ),
                      child: rive.RiveAnimation.asset(
                        'assets/icons/swap.riv',
                        controllers: [_controller],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 165,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color.fromARGB(20, 255, 255, 255),
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rate',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.subtexto,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '1 ATOM = 10.1 USDC',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: pallet.subtexto,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '1 USDC = 0.1 ATOM',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: pallet.subtexto.withOpacity(0.5),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Swap Fee',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.subtexto,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '0%',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: pallet.subtexto,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            '~\$0',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: pallet.subtexto.withOpacity(0.5),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Slippage',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.subtexto,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '< 0.001%',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.subtexto,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 34),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(width: 12),
              RichText(
                text: TextSpan(
                  text: 'I agree with Interchain ',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms & Agreement \n',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: pallet.hypertexto,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'services.',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: (() {}),
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
              'Buy',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: pallet.texto,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
