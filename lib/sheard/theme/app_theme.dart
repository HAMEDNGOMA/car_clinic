import 'package:car_clinic/sheard/managers/color_manager.dart';
import 'package:car_clinic/sheard/managers/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData apptheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.red),
  scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 248, 248, 248),
    elevation: 0,
    foregroundColor: Colors.white,
    scrolledUnderElevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 248, 248, 248),
      statusBarIconBrightness: Brightness.dark,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  brightness: Brightness.light,
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (context) => const Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
    closeButtonIconBuilder: (context) => const Icon(
      Icons.close,
      color: Colors.black,
    ),
    drawerButtonIconBuilder: (context) => const Icon(
      Icons.menu,
      color: Colors.black,
    ),
    endDrawerButtonIconBuilder: (context) => const Icon(
      Icons.menu,
      color: Colors.black,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.deepPurple,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  fontFamily: FontManager.fontFamily,
  useMaterial3: true,
);
