import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  static TextTheme lightTheme =TextTheme(
      bodySmall: GoogleFonts.meriendaOne(
          color: Colors.black54
      ),
      bodyLarge: GoogleFonts.akshar(
          color: Colors.black54,
          fontSize: 24
      )
  );
  static TextTheme darkTheme =TextTheme(
      bodySmall: GoogleFonts.meriendaOne(
          color: Colors.white70
      ),
      bodyLarge: GoogleFonts.akshar(
          color: Colors.white60,
          fontSize: 24
      )
  );
}