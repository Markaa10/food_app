import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

abstract class AppTextstyle {
  static TextStyle get ktitleText => GoogleFonts.montserrat(
        fontSize: getProportionateScreenWidth(25),
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get kbodyText => GoogleFonts.montserrat(
        fontSize: getProportionateScreenWidth(14),
        color: Colors.black,
        fontWeight: FontWeight.normal,
      );
}
