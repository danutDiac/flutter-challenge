import 'package:flutter/material.dart';
import './colorCodes.dart' as color_constants;

class ThemeManager with ChangeNotifier {
  final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: color_constants.primaryColor,
      secondary: color_constants.secondaryColor,
      tertiary: color_constants.tertiaryColor,
    ),
    scaffoldBackgroundColor: const Color(0xffF2F2F2),
    fontFamily: 'SpaceMono',
    backgroundColor: color_constants.darkGrey,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral01Color),
      headline2: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral01Color),
      headline3: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: color_constants.primaryColor),
      headline4: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.normal,
          color: color_constants.tertiaryColor),
      bodyText1: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
        color: color_constants.neutral01Color,
      ),
    ),
  );

  final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: color_constants.primaryColor,
      secondary: color_constants.secondaryColor,
      tertiary: color_constants.tertiaryColor,
    ),
    scaffoldBackgroundColor: const Color(0xffF2F2F2),
    fontFamily: 'SpaceMono',
    backgroundColor: color_constants.lightGrey,
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral01Color),
      headline2: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral01Color),
      headline3: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: color_constants.primaryColor),
      headline4: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.normal,
          color: color_constants.tertiaryColor),
      bodyText1: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
        color: color_constants.neutral01Color,
      ),
    ),
  );
  var _isDark = false;

  late ThemeData _themeData;
  ThemeData getTheme() => _themeData;

  ThemeManager() {
    _themeData = lightTheme;

    notifyListeners();
  }

  bool isDark() => _isDark;

  void setDarkMode() async {
    _themeData = darkTheme;
    _isDark = true;

    notifyListeners();
  }

  void setLightMode() async {
    _themeData = lightTheme;
    _isDark = false;

    notifyListeners();
  }
}