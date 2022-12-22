import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interchain/data/palletcolors.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key? key}) : super(key: key);

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  final List<String> list = <String>['USD', 'EUR', 'BTC', 'ETH'];

  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 70,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Currency',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: pallet.texto,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      border: Border.all(
                        width: 1,
                        color: Colors.white30,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BTC',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: pallet.texto,
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        Image.asset('assets/imgs/arrow-down.png'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.texto,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 42,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        border: Border.all(
                          width: 1,
                          color: pallet.primaria,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '0.15',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: pallet.texto,
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'BTC',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              color: pallet.texto,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Amount',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                '0.15 BTC',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
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
                      '1 BTC = \$21,726',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: pallet.subtexto,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '1 USD = \$0.000217 BTC',
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
        const SizedBox(height: 8),
        SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deposit fee',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                '0%',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total payment',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Text(
                '\$3,185.62',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
        Text(
          'Payment method',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            color: pallet.subtexto,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 54,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 17,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
            border: Border.all(
              width: 1,
              color: pallet.primaria,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 18,
                width: 28,
                child: Image.asset(
                  'assets/imgs/master.png',
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Mastercard',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: pallet.primaria,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 54,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 17,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
            border: Border.all(
              width: 1,
              color: Colors.white24,
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 18,
                width: 28,
                child: Image.asset(
                  'assets/imgs/paypal.png',
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'PayPal',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: pallet.subtexto,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white24,
                  ),
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
              'Continue',
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
