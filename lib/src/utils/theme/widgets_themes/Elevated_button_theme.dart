
import 'package:fire1/src/constaints/colors.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:flutter/material.dart';

class TElevetedButtonTheme{

TElevetedButtonTheme._();

static final lightElevetedButtonTheme=ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),


  ),
);


static final darkElevetedButtonTheme=ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),


  ),
);



}