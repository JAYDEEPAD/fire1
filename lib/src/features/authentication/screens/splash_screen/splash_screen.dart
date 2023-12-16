import 'package:fire1/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:fire1/src/constaints/colors.dart';
import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:fire1/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "spleshScreen",));
}

class SpleshScreen extends StatelessWidget {
   SpleshScreen({Key? key}) : super(key: key);

  //final  splashScreenController= Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(FadeInAnimationController());
    controller.startSpleshAnimation();


    return Scaffold(
      body: Stack(
        children: [
          TFadeAnimationWidget(
            durationMs: 1600,
            animatePosition: TAnimatePosition(
            topAfter: 0, topBefore: 30, leftBefore: 30, leftAfter: 0,
          ),
          child: Image(image: AssetImage(tSpleshTopIcon)),
          ),
          TFadeAnimationWidget(
            durationMs: 2000,
            animatePosition: TAnimatePosition(
              topBefore: 80, topAfter: 80, leftAfter: tdefultSize, leftBefore: -80,
            ),
            child :Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headlineLarge,),
                Text(tAppTagLine, style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),

          ),

          TFadeAnimationWidget(
            durationMs: 2400,
            animatePosition: TAnimatePosition(
              bottomBefore: 0,bottomAfter: 50),
            child:Image(image: AssetImage(tSpleshImage),)) ,

          TFadeAnimationWidget(
              durationMs: 2400,
               animatePosition: TAnimatePosition(
                  bottomBefore: 0,bottomAfter: 50,rightBefore: tdefultSize, rightAfter: tdefultSize),
              child:Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                color:tPrimaryColor,
              ),
          ) ,

        ],
      ),
    );
  }

}

