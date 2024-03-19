import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorSeed = Color(0xff5f9e1b);
const scaffoldBackgroundColor = Color(0xFFF8F7F7);

class AppTheme{
  ThemeData getTheme() => ThemeData(
    //* Configuracion general
    useMaterial3: true,
    colorSchemeSeed: colorSeed,

    //* Scaffold background
    scaffoldBackgroundColor: scaffoldBackgroundColor,

    //* Textos
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserratAlternates().copyWith(
        fontSize: 40, fontWeight: FontWeight.bold
      ),
      titleMedium: GoogleFonts.montserratAlternates().copyWith(
        fontSize: 30, fontWeight: FontWeight.bold
      ),
      titleSmall: GoogleFonts.montserratAlternates().copyWith(
        fontSize: 20
      ),
    ),

    //* Appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: scaffoldBackgroundColor,
      titleTextStyle: GoogleFonts.roboto().copyWith(
        fontSize: 20, 
        fontWeight: FontWeight.w600,
        color: Colors.black54
      )
    ),
  );
}