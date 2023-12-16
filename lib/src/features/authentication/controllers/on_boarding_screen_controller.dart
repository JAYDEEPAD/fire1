import 'package:fire1/src/features/authentication/models/on_boarding_model.dart';
import 'package:fire1/src/features/authentication/screens/on_boardingWidget.dart';
import 'package:fire1/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:fire1/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constaints/colors.dart';
import '../../../constaints/image_strings.dart';
import '../../../constaints/test_strings.dart';

class OnBoardingController extends GetxController{


  final controllar=LiquidController();

  RxInt currentPage=0.obs;



  final pages= [
    onBoardingWidget(
      model: onBoardingModel(
          image: tOnBoardingImage1,
          title: tOnBoardingPageTitle1,
          subtitle: tOnBoardingPageSubTitle1,
          counterText: tOnBoardingCounter1,
          bgcolor: tOnBordingPage1Color,
          ),
    ),

    onBoardingWidget(
      model: onBoardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingPageTitle2,
          subtitle: tOnBoardingPageSubTitle2,
          counterText: tOnBoardingCounter2,
          bgcolor: tOnBordingPage2Color,
          ),
    ),
    onBoardingWidget(
      model: onBoardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingPageTitle3,
          subtitle: tOnBoardingPageSubTitle3,
          counterText: tOnBoardingCounter3,
          bgcolor: tOnBordingPage3Color,
          ),
    ),



  ];



  onPageCallBack( int activePageIndex) => currentPage.value = activePageIndex;

  animatedToNextSlide(){
    int nextPage=controllar.currentPage+1;
    controllar.animateToPage(page: nextPage);
  }
  skip()=> controllar.jumpToPage(page: 2);








    static OnBoardingController get find => Get.find();
  RxBool animate=false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnBoardingScreen());
  }

}