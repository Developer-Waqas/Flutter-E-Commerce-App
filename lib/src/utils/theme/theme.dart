import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/utils/theme/widgets_theme/widgets_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {

  ///light theme--------------------------------------
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextThemes.lightTextTheme,
    buttonTheme: ButtonThemeData(
      buttonColor: purple900
    ),
  );

  ///dark theme--------------------------------------
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextThemes.darkTextTheme,
    buttonTheme: ButtonThemeData(
        buttonColor: whiteColor,
    ),
  );
}
