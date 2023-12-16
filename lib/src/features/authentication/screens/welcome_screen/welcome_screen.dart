import 'package:fire1/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:fire1/src/constaints/colors.dart';
import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MaterialApp(title: "Welcome Screen",));
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller=Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuary=MediaQuery.of(context);
    var brightness=MediaQuery.platformBrightnessOf;
    var height=mediaQuary.size.height;
    final isDarkMode= brightness==Brightness.dark;

    return Scaffold(


      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeAnimationWidget(
            durationMs: 1200,
            animatePosition: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,

            ),
            child: Container(
              padding: EdgeInsets.all(tdefultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(tWelcomeImage,),height: height * 0.6,),
                  Column(
                    children: [
                      Text(tWelcomeTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                      Text(tWelcomeSubTitle, style: Theme.of(context).textTheme.bodySmall,)
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(child: ElevatedButton(onPressed: (){},

                          child: Text(tLogin.toUpperCase()))),
                      SizedBox(width: 10.0,),
                      Expanded(
                        child: ElevatedButton(onPressed: (){},

                              child: Text(tSignUp.toUpperCase()),),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
