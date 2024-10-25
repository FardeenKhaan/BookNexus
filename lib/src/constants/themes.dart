import 'package:book_nexus/src/constants/colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: backgroundColor,
        secondary: secondryColor,
        onSecondary: backgroundColor,
        error: Colors.red,
        onError: fontColor,
        surface: backgroundColor,
        onSurface: fontColor),
    textTheme: TextTheme());

var DarkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
);
