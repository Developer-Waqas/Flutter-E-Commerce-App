import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/utils/theme/widgets_theme/widgets_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {

  ///light theme--------------------------------------
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: purple900,
    brightness: Brightness.light,
    textTheme: TextThemes.lightTextTheme,
  );

  ///dark theme--------------------------------------
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextThemes.darkTextTheme,
  );
}
