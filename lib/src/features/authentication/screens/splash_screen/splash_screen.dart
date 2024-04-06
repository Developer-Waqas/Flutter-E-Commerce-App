import 'package:e_commerce_app/src/features/authentication/controller/splash_controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});


  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.splashScreen();
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
