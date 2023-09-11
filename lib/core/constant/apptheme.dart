import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
ThemeData themeEnglish = ThemeData(
  // fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
    ),

    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 28,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      height: 2,
    ),
    bodySmall: TextStyle(
      color: AppColor.grey,
      fontSize: 14,
      height: 2,
    ),
    labelMedium: TextStyle(
      color: AppColor.grey,
      fontSize: 16,
      height: 2,
    ),
    titleMedium: TextStyle(
      color: AppColor.black,
      fontSize: 16,
      height: 2,
      fontWeight: FontWeight.bold,
    ),
  ),

  // primarySwatch: Colors.blue,
  // primarySwatch:  createMaterialColor(const Color(0xB81836FF)),
  primarySwatch:  primary,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      height: 2,
    ),
    bodySmall: TextStyle(
      color: AppColor.grey,
      fontSize: 14,
      height: 2,
    ),
    labelMedium: TextStyle(
      color: AppColor.grey,
      fontSize: 16,
      height: 2,
    ),
  ),
  primarySwatch:  primary,

);