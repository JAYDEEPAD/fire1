import 'package:fire1/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:fire1/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/screens/signup/sign_up_screen.dart';

class FadeInAnimationController extends GetxController{

  static FadeInAnimationController get find => Get.find();


  RxBool animate=false.obs;

  Future startSpleshAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(Duration(milliseconds: 5000));
    animate.value=false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(SignUpScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
  }
}