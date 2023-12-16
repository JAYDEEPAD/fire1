import 'package:fire1/src/constaints/colors.dart';
import 'package:fire1/src/constaints/sizes.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme{

  TOutlinedButtonTheme._();

  static final lightOutlingedButtonTheme=OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),

    ),
  );

  static final darkOutlinedButtonTheme=OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),

    ),

  );
}