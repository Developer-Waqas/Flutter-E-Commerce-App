import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingContainer extends StatelessWidget {
  
  ImageProvider<Object> image;
  String text;
  String subText;
  Color? color;

   OnBoardingContainer({
    super.key,
    required this.image,
    required this.text,
     required this.subText,
     this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              height: size.height * 0.5,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 10,),
              Text(
                text,
                style: TextStyle(
                    fontFamily: 'UbuntuBold',
                    color: Colors.black87,
                    fontSize: 30
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              Text(subText,style: TextStyle(
                  fontFamily: 'UbuntuBold',
                  color: Colors.black54,
              ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
