import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:moovbe/consts/app_Colors.dart';

final lightThemeData = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: darkGrey),
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    elevatedButtonTheme: elevatedButtonThemeData);

// final darkThemeData = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: primaryColor,
//     textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
//    // scaffoldBackgroundColor: bgColorsDarkTheme,
//     elevatedButtonTheme: elevatedButtonThemeData);

//elavated button theme

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
      backgroundColor: primaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(defaultBorderRadius)))),
);

BoxDecoration textfield_decor() {
  return BoxDecoration(
      color: lightGrey,
      borderRadius: BorderRadius.circular(defaultBorderRadius));
}
