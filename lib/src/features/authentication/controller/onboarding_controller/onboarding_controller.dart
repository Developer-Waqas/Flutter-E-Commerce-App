import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../widgets/onboard_container/onboard_container.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
      OnBoardingContainer(
        color: whiteColor,
        image: const AssetImage(onBoardImage1),
        text: 'Various Collections Of The Latest Products',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
      OnBoardingContainer(
        color: onBoardingColor2,
        image: const AssetImage(onBoardImage2),
        text: 'Complete Collection Of Colors And Sizes',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
      OnBoardingContainer(
        color: onBoardingColor3,
        image: const AssetImage(onBoardImage3),
        text: 'Find The Most Suitable Outfit For You',
        subText:
            'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum',
      ),
    ];

    onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
  
}