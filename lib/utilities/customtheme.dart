

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const defaultPadding = 16.0;

class ThemeClass{
  Color lightPrimaryColor= const Color(0xFF03A9F4);
 Color darkPrimaryColor =const Color(0xFF25476A);

 static ThemeData lightTheme=ThemeData(

  primaryColor: ThemeData.light().scaffoldBackgroundColor,
  textTheme: GoogleFonts.lexendTextTheme().apply(
    bodyColor: Colors.white
  ),
  colorScheme: ColorScheme.light().copyWith(
    primary:ThemeClass().lightPrimaryColor
  )
 );
  static ThemeData darkTheme=ThemeData(
  primaryColor: ThemeData.dark().scaffoldBackgroundColor,
  textTheme: GoogleFonts.lexendTextTheme().apply(
    bodyColor: Colors.white
  ),
  colorScheme: ColorScheme.dark().copyWith(
    primary:ThemeClass().lightPrimaryColor
  )
 );

}