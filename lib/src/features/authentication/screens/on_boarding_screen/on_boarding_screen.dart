import 'package:fire1/src/constaints/colors.dart';
import 'package:fire1/src/constaints/image_strings.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:fire1/src/features/authentication/controllers/on_boarding_screen_controller.dart';
import 'package:fire1/src/features/authentication/models/on_boarding_model.dart';
import 'package:fire1/src/features/authentication/screens/on_boardingWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "OnBoardingPage",));
}


class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
     final controller=OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages:controller.pages,
           liquidController: controller.controllar,
           onPageChangeCallback: controller.onPageCallBack,
           slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal:true ,
          ),
          Positioned(
              child: OutlinedButton(onPressed: ()=> controller.animatedToNextSlide(),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black26),
                      ),

                    child:Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff272727),


                      ),
                      child: Text("Welcome Back"),

                    ))),
          Positioned(
               top: 50,
               right: 20,
              child: TextButton(
                onPressed: (){
                       controller.skip();
                },
                child: Text("Skip", style: TextStyle(color: Colors.grey),),
              )),
          Obx(
              ()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage.value,
              count: 3,
                 effect: WormEffect(
                   activeDotColor: Color(0xff272727),
                   dotHeight: 5.0
                 ),
            )),
          )
        ],
      ),
    );
  }



  }


