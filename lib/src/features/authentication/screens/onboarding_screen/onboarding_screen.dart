import 'dart:async';

import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final obController = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: obController.controller,
            pages: obController.pages,
            enableSideReveal: true,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: black87),
            onPageChangeCallback: obController.currentPage,
          ),
          Obx(
            () => Positioned(
              bottom: 30,
              child: AnimatedSmoothIndicator(
                activeIndex: obController.currentPage.value,
                count: 3,
                effect: WormEffect(
                  activeDotColor: purple900,
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
