import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lightBgColor = Color.fromARGB(255, 233, 233, 233);
const lightBlueColor = Color.fromARGB(255, 4, 110, 136);
const darkBgColor = Color.fromARGB(255, 35, 45, 55);
const lightOrange = Color.fromARGB(255, 245, 187, 133);
const darkBtnColor = Color.fromARGB(255, 41, 190, 254);

const lightnavBarColor = Color.fromARGB(255, 255, 255, 255);
const darknavBarColor = Color.fromARGB(255, 40, 51, 62);

const primaryColor_ = Color.fromARGB(255, 5, 121, 167);
const secondaryColor_ = Color.fromARGB(255, 255, 0, 200);

TextStyle text18black = GoogleFonts.nunito(color: Colors.black87, fontSize: 18);
TextStyle text18white = GoogleFonts.nunito(color: Colors.white, fontSize: 18);
TextStyle titleBlue = GoogleFonts.nunito(color: lightBlueColor, fontSize: 22);
TextStyle titleWhite = GoogleFonts.anton(
    color: Colors.white, fontSize: 35, fontWeight: FontWeight.w800);
TextStyle titleblack = GoogleFonts.anton(
    color: Colors.black87, fontSize: 35, fontWeight: FontWeight.w800);

ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  backgroundColor: darkBgColor,
);
