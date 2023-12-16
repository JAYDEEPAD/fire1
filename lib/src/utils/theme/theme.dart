import 'package:fire1/src/utils/theme/widgets_themes/Elevated_button_theme.dart';
import 'package:fire1/src/utils/theme/widgets_themes/outline_button_theme.dart';
import 'package:fire1/src/utils/theme/widgets_themes/text_field_theme.dart';
import 'package:fire1/src/utils/theme/widgets_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme{

  TAppTheme._();



  static  ThemeData lightTheme= ThemeData(
   brightness: Brightness.light,
    textTheme:TTextTheme.lightTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlingedButtonTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevetedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  //  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),

    primarySwatch: MaterialColor(0xFFE8F5E9, <int , Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(0xFF66BB6A),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    }),
  );
  static  ThemeData darkTheme= ThemeData(

    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevetedButtonTheme.darkElevetedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,



    primarySwatch: MaterialColor(0xFFE8F5E9, <int , Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: Color(0xFF66BB6A),
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    }),
  );
  //static  ThemeData DarkTheme= ThemeData();
}