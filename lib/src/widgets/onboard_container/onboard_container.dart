import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors/colors.dart';
import '../../constants/image_strings/image_strings.dart';

class OnBoardingContainer extends StatelessWidget {
  final double imageHeight;
  ImageProvider<Object> image;
  String text;
  String subText;
  Color? color;

   OnBoardingContainer({
    super.key,
    required this.imageHeight,
    required this.image,
    required this.text,
     required this.subText,
     this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: color,
      child: Column(
        children: [
          SizedBox(height: 35,),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              image: image,
              height: imageHeight,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10,),
              Text(
                text,
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(subText,style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
