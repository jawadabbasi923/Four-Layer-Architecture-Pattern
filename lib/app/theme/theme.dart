import 'package:flutter/material.dart';

import 'color.dart';

class AppTheme {
  static const String mulsihFont = 'Mulish';
  static const String robotoFont = 'Roboto';

  static BorderRadius commonRadius = BorderRadius.circular(8);
  static BoxDecoration commonBorderBox = BoxDecoration(
    border: Border.all(color: AppColor.colorTextLight3, width: 1),
    borderRadius: AppTheme.commonRadius,
  );

  static TextStyle normalDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? AppColor.colorOnSecondary,
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.w500,
        fontFamily: mulsihFont,
      );
  static TextStyle smallTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? AppColor.colorOnSecondary,
        fontSize: fontSize ?? 12,
        fontWeight: FontWeight.w400,
        fontFamily: mulsihFont,
      );
  static TextStyle mediumDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? AppColor.colorOnSecondary,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w600,
        fontFamily: mulsihFont,
      );
  static TextStyle semiBoldTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? AppColor.colorOnSecondary,
        fontSize: fontSize ?? 14,
        fontWeight: FontWeight.w700,
        fontFamily: mulsihFont,
      );
  static TextStyle boldDarkTextStyle({double? fontSize, Color? textColor}) =>
      TextStyle(
        color: textColor ?? AppColor.colorOnSecondary,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.w700,
        fontFamily: mulsihFont,
      );

  static TextStyle geryTextStyle(
          {double? fontSize, Color? textColor, FontWeight? fontWeight}) =>
      TextStyle(
        color: textColor ?? AppColor.colorTextLight,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: mulsihFont,
      );

  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}
