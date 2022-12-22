import 'package:flutter/material.dart';

class PalletColors {
  late Color primaria;
  late Color segundaria;
  late Color texto;
  late Color subtexto;
  late Color hypertexto;
  late Color buttoncolortext;
  late Color buttoncolortext2;
  late Color buttoncolor;

  PalletColors({
    required this.primaria,
    required this.segundaria,
    required this.texto,
    required this.subtexto,
    required this.hypertexto,
    required this.buttoncolortext,
    required this.buttoncolortext2,
    required this.buttoncolor,
  });
}

final pallet = PalletColors(
  primaria: const Color(0xff642CDA),
  segundaria: const Color(0xffFFFCFC),
  texto: const Color(0xffFFFFFF),
  subtexto: const Color(0xffDED9E8),
  hypertexto: const Color(0xffA57FF6),
  buttoncolortext: const Color(0xff0B0811),
  buttoncolortext2: const Color(0xff6F6A79),
  buttoncolor: const Color(0xff3D3653),
);
