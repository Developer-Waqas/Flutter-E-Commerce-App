import 'dart:async';

import 'package:e_commerce_app/src/features/authentication/controller/splash_controller/splash_controller.dart';
import 'package:e_commerce_app/src/features/authentication/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      setState(() {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()), (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'StyleMart',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            SizedBox(
              height: 10
            ),
            Text(
              'Any shopping just from home',
              style: Theme.of(context).textTheme.bodySmall
            ),
          ],
        ),
      ),
    );
  }
}
