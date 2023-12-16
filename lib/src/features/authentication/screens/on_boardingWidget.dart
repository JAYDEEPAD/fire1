import 'package:fire1/src/constaints/sizes.dart';
import 'package:fire1/src/constaints/test_strings.dart';
import 'package:fire1/src/features/authentication/models/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onBoardingWidget extends StatelessWidget {
  const onBoardingWidget({
    super.key,
    required this.model,
  });

  final onBoardingModel model;

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tdefultSize),
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image),height: size.height *0.45,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headlineMedium,),
              Text(model.subtitle,textAlign: TextAlign.center,),
            ],
          ),
          Text(tOnBoardingCounter1,style: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 50.0,),
        ],
      ),
    );
  }
}
