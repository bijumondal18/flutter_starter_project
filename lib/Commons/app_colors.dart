import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static  Color primary = const Color(0xFF4EF5BA);
  static const primaryBackground = Color(0xFFFDEBE4);
  static  Color onPrimary = primary.withOpacity(0.4);
  static  Color secondary = primary.withOpacity(0.6);
  static  Color onSecondary = primary.withOpacity(0.8);
  static const white = Color(0xFFFFFFFF);
  static const scaffold = Color(0xFFF3F5F7);
  static const scaffoldDark = Color(0xFF1C1C1C);
  static const bg = Color(0xFFF7F8F9);
  static const black = Color(0xFF000000);
  static const darkGrey = Color(0xFF464646);
  static const lightGrey = Color(0xFFE7E7E7);
  static const grey = Color(0xFF989696);
  static const shimmer = Color(0xFFF3F3F3);
  static const textFieldBg = Color(0xFFF8E6E0);
  static const transparent = Color(0x00FFFFFF);
  static const orange = Color(0xF7FC7732);
  static const red = Color(0xF7D33E3E);
  static const error = Color(0xFF963636);
  static const green = Color(0xFF2A752A);
  static const blue = Color(0xFF1977B2);
  static const facebook = Color(0xFF3b5998);
  static const twitter = Color(0xFF00ACEE);
  static const instagram = Color(0xFF833AB4);
  static const youtube = Color(0xFFc4302b);
  static const statusBackground = Color(0xffd9fad4);
  static const successSnackBarBackground = Color(0xff6c9d67);
  static Color appBarColor =
      LinearGradient(colors: [primary, onPrimary, secondary, onSecondary]) as Color;

  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}
