import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme() {
  var baseTheme = ThemeData();
  return baseTheme.copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
  );
}
