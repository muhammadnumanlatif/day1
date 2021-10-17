import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  //light Theme
  static ThemeData get lightTheme => ThemeData(
    primarySwatch: Colors.teal,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
    appBarTheme: AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
    ),
  );

  //dark Theme
  static ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.aBeeZee().fontFamily,
  );

}