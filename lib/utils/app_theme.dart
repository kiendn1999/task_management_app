import 'package:flutter/material.dart';
import 'package:task_management_app/utils/colors_app.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Inter",
        backgroundColor: Colors.black,
        primaryColor: ColorsApp.primaryColor,
        dividerColor: Color(0xFFEDEEF2),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFF702DE3), foregroundColor: Colors.white),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          backgroundColor: Color(0xFFF7F9FB),
        )),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          primary: ColorsApp.primaryColor,
          onSurface: Colors.white,
          textStyle: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        )),
        textTheme: lightTextTheme);
  }

  static final TextTheme lightTextTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 16,
        color: ColorsApp.primaryColor,
        fontWeight: FontWeight.w600),
    headline2: TextStyle(
        fontSize: 14,
        color: ColorsApp.primaryColor2,
        fontWeight: FontWeight.w500),
    headline3: TextStyle(fontSize: 14, color: ColorsApp.primaryColor),
    headline4: TextStyle(fontSize: 14, color: ColorsApp.primaryColor2),
    headline5: TextStyle(
        fontSize: 20,
        color: ColorsApp.primaryColor,
        fontWeight: FontWeight.w500),
  );
}
