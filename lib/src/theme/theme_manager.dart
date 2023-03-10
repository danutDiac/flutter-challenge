import 'package:flutter/material.dart';
import 'color_codes.dart' as color_constants;

class ThemeManager with ChangeNotifier {
  final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: color_constants.primary01Color,
      secondary: color_constants.secondaryColor,
      tertiary: color_constants.tertiaryColor,
    ),
    scaffoldBackgroundColor: color_constants.neutral03Color,
    fontFamily: 'SpaceMono',
    backgroundColor: color_constants.darkGrey,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral01Color),
      headline3: TextStyle(
          fontSize: 11.0, fontWeight: FontWeight.normal, color: Colors.white),
      headline4: TextStyle(
          fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.white),
      headline5: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          height: 1.9),
      headline6: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.normal,
          color: color_constants.primary02Color),
      bodyText1: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
        color: color_constants.neutral01Color,
      ),
      bodyText2: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.normal,
          color: Colors.white,
          height: 2.5),
      headlineLarge: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );

  final lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: color_constants.primary01Color,
        secondary: color_constants.secondaryColor,
        tertiary: color_constants.tertiaryColor,
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'SpaceMono',
      backgroundColor: color_constants.lightGrey,
      iconTheme: const IconThemeData(color: color_constants.tertiaryColor),
      textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: color_constants.neutral01Color),
        headline2: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: color_constants.neutral01Color),
        headline3: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.normal,
            color: color_constants.tertiaryColor),
        headline4: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.normal,
            color: color_constants.tertiaryColor),
        headline5: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.normal,
            color: color_constants.secondaryColor,
            height: 1.9),
        headline6: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.normal,
            color: color_constants.primary02Color),
        bodyText1: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.normal,
          color: color_constants.neutral01Color,
        ),
        bodyText2: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.normal,
            color: color_constants.tertiaryColor,
            height: 2.5),
        headlineLarge: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: color_constants.neutral02Color,
        ),
      ));
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
