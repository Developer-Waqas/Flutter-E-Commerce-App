import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class TextThemes {

  ///light text theme--------------------------------------
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'UbuntuBold',
        color: whiteColor,
        fontSize: 30
    ),
    displaySmall: TextStyle(
      fontSize: 25,
      fontFamily: 'UbuntuMedium',
      color: blackColor,
    ),
    bodySmall: TextStyle(
      fontFamily: 'UbuntuRegular',
      color: greyColor,
    ),

  );


  ///dark text theme--------------------------------------
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: TextStyle(
        fontFamily: 'UbuntuBold',
        color: purple900,
        fontSize: 30
    ),
    bodySmall: TextStyle(
      fontFamily: 'UbuntuMedium',
      color: purple900,
    ),
    displaySmall: TextStyle(
      fontSize: 25,
      fontFamily: 'UbuntuMedium',
      color: purple900,
    ),

  );


}