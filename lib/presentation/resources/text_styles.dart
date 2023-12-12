import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/presentation/resources/res.dart';

class AppTextStyles {
  final developerName = GoogleFonts.leagueSpartan(
    fontSize: sizes.jumboFontSize,
    fontWeight: FontWeight.w700,
    foreground: Paint()
      // ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = colors.black,
  );

  final shortBio = GoogleFonts.leagueSpartan(
    fontSize: sizes.largeFontSize,
    fontWeight: FontWeight.w400,
    color: Color(0xFF3498DB),
  );

  final pageHeading = GoogleFonts.leagueSpartan(
    fontSize: 32,
    color: colors.red,
    fontWeight: FontWeight.bold,
  );

  final regularText = GoogleFonts.leagueSpartan();
}
