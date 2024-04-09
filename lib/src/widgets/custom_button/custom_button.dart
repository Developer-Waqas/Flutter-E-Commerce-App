import 'package:flutter/material.dart';

import '../../constants/colors/colors.dart';

class Custombutton extends StatelessWidget {

  final double height;
  final double width;
  final Color? color;
  final double borderRadius;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final VoidCallback onPressed;
  final BoxBorder? border;

  const Custombutton({
    super.key,
    this.height = 55,
    this.width = 350,
    this.color,
    this.borderRadius = 25,
    required this.text,
    this.textStyle,
    this.padding,
    required this.onPressed,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
