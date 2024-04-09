import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/constants/style/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffexIcon;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffexIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodySmall,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        prefixIcon: prefixIcon,
        prefixIconColor: greyColor,
        suffixIcon: suffexIcon,
        suffixIconColor: greyColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: greyColor.withOpacity(0.03),
        filled: true,
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: purple900,
          ),
            borderRadius: BorderRadius.circular(25),
        )
      ),
    );
  }
}
