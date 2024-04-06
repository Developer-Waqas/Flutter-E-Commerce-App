import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/constants/image_strings/image_strings.dart';
import 'package:e_commerce_app/src/widgets/onboard_container/onboard_container.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingContainer(
        color: whiteColor,
        imageHeight: size.height * 0.5,
        image: AssetImage(onBoardImage1),
        text: 'Various Collections Of The Latest Products',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
      OnBoardingContainer(
        color: onBoardingColor2,
        imageHeight: size.height * 0.5,
        image: AssetImage(onBoardImage2),
        text: 'Complete Collection Of Colors And Sizes',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
      OnBoardingContainer(
        color: onBoardingColor3,
        imageHeight: size.height * 0.5,
        image: AssetImage(onBoardImage1),
        text: 'Find The Most Suitable Outfit For You',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
        ],
      ),
    );
  }
}
