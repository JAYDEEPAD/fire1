import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:fire1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:fire1/src/constaints/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class TFadeAnimationWidget extends StatelessWidget {
   TFadeAnimationWidget({
    super.key,
    required this.durationMs,
     this.animatePosition,
     required this.child,
  });

  final controller=Get.put(FadeInAnimationController());
  final int durationMs;
  final TAnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> AnimatedPositioned(
        duration: Duration(milliseconds: durationMs),
        top: controller.animate.value ? animatePosition!.topAfter :animatePosition!.topBefore,
        left:controller.animate.value ? animatePosition!.leftAfter :animatePosition!.leftBefore,
        bottom:controller.animate.value ? animatePosition!.bottomAfter :animatePosition!.bottomBefore,
        right:controller.animate.value ? animatePosition!.rightAfter :animatePosition!.rightBefore,
        child: AnimatedOpacity(
            duration: Duration(milliseconds: durationMs),
            opacity: controller.animate.value ? 1 : 0,
            child: child,
        ),       //child: Image(image: AssetImage(tSpleshTopIcon),)),),
    ),
    );
  }
}
