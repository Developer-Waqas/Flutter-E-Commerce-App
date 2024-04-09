import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class TextThemes {

  ///light text theme--------------------------------------
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'UbuntuBold',
        color: purple900,
        fontSize: 30
    ),
    displaySmall: TextStyle(
      fontSize: 25,
      fontFamily: 'UbuntuMedium',
      color: blackColor,
    ),
    bodySmall: TextStyle(
      fontFamily: 'UbuntuRegular',
      color: Colors.grey,
      fontSize: 14
    ),
    bodyMedium: TextStyle(
      fontFamily: 'UbuntuMedium',
      color: whiteColor
    ),
    headlineMedium: TextStyle(
        fontFamily: 'UbuntuMedium',
        color: blackColor,
      fontSize: 15
    ),

  );


  ///dark text theme--------------------------------------
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'UbuntuBold',
        color: Colors.white70,
        fontSize: 30
    ),
    bodySmall: TextStyle(
      fontFamily: 'UbuntuMedium',
      color: white54,
    ),
    displaySmall: TextStyle(
      fontSize: 25,
      fontFamily: 'UbuntuMedium',
      color: white54,
    ),
    headlineMedium: TextStyle(
        fontFamily: 'UbuntuMedium',
        color: white54,
      fontSize: 10
    ),

  );


}