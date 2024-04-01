import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';

class TTextTheme {
  TTextTheme._({required TextStyle headline1});

  // ignore: unused_field
  static final TTextTheme _instance = TTextTheme._(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight:FontWeight.bold,color: tDarkColor),
    

  );

}