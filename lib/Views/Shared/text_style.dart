import "package:flutter/material.dart";

import 'package:google_fonts/google_fonts.dart';

TextStyle appStyle(double fontsize, Color bgColor, FontWeight fontWeight) {
  return GoogleFonts.poppins(
      fontSize: fontsize, color: bgColor, fontWeight: fontWeight);
}

TextStyle appStylewithHeight(
    double fontsize, Color bgColor, FontWeight fontWeight, double height) {
  return GoogleFonts.poppins(
      fontSize: fontsize,
      color: bgColor,
      fontWeight: fontWeight,
      height: height);
}
