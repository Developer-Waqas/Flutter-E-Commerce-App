import 'dart:async';

import 'package:e_commerce_app/src/constants/colors/colors.dart';
import 'package:e_commerce_app/src/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:e_commerce_app/src/features/authentication/screens/create_account_screen/create_account_screen.dart';
import 'package:e_commerce_app/src/widgets/custom_button/custom_button.dart';
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
          Positioned(
            bottom: 80,
            child: Custombutton(
              text: 'Create Account',
              onPressed: () {Get.to(CreateAccountScreen());},
              height: 55,
              width: 350,
              borderRadius: 25,
              color: purple900,
              textStyle: Theme.of(context).textTheme.bodyMedium,
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              children: [
                Text(
                  'Already have an Account?',
                  style: TextStyle(
                    fontFamily: 'UbuntuRegular',
                    color: blackColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'UbuntuMedium',
                      color: purple900,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
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
