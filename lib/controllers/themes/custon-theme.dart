// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

CustomThemeProvidr customThemeProvidr = CustomThemeProvidr();

class CustomThemeProvidr extends GetxController {
  ThemeMode currentTheme = ThemeMode.light;
  

  void selectMode(int check) {
    switch (check) {
      case 0:
        {
          currentTheme = ThemeMode.light;
        }
        break;
      case 1:
        {
          currentTheme = ThemeMode.dark;
        }

        break;
      case 2:
        {
          // currentTheme = ThemeMode.system;
          var brightness = SchedulerBinding.instance.window.platformBrightness;
          if(brightness==Brightness.light){currentTheme=currentTheme = ThemeMode.light;}else{
             currentTheme = ThemeMode.dark;
          }
        }
        break;
      default:
        {
          currentTheme = ThemeMode.system;
        }
    }
    update();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.black),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      popupMenuTheme: PopupMenuThemeData(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textStyle: const TextStyle(color: Colors.black)),
      bottomNavigationBarTheme:
          const BottomNavigationBarThemeData(backgroundColor: Colors.white),
      primaryColor: const Color(0xFFfe6b03),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFFb7b9b8).withOpacity(.05),
      ),
      textTheme: const TextTheme(
        headline5: TextStyle(
            color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(color: Colors.black, fontSize: 15),
        subtitle2: TextStyle(color: Colors.white, fontSize: 17),
        headline6: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      appBarTheme: const AppBarTheme(color: Colors.white),
      iconTheme: const IconThemeData(color: Colors.black),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(const Color(0xFFfe6b03)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF16202a),
          elevation: 2,
        ),
        primaryColor: const Color(0xFF0b1219),
        popupMenuTheme: PopupMenuThemeData(
            color: const Color(0xFF0b1219),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            textStyle: const TextStyle(color: Colors.white)),
        textTheme: const TextTheme(
          headline5: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(color: Colors.white, fontSize: 17),
          headline6: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        appBarTheme: const AppBarTheme(color: Color(0xFF0b1219)),
        iconTheme: const IconThemeData(color: Colors.white),
        scaffoldBackgroundColor: const Color(0xFF0b1219),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith()
            .copyWith(secondary: const Color(0xFF16202a)));
  }
}
