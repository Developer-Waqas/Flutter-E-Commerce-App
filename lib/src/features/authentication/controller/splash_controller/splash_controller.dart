import 'dart:async';
import 'package:e_commerce_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';

import 'package:get/get.dart';

class SplashController extends GetxController {

static SplashController get find => Get.find();

splashScreen(){
  Timer(Duration(seconds: 3), () {
    Get.to(OnBoardingScreen());
  });
}


}