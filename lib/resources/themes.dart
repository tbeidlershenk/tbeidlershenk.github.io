// ignore_for_file: null_check_always_fails

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// This class defines global themes for the app. Right now they are defined as
/// final variables but we can refactor this to take the values in a constructor
@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  // Global color theme
  static Color light = Color.fromARGB(255, 255, 255, 255);
  static Color medium = const Color.fromARGB(255, 165, 208, 189);
  static Color dark = const Color.fromARGB(255, 0, 123, 78);
  static Color veryDark = Color.fromARGB(255, 0, 0, 0);
  static Color background = const Color.fromARGB(255, 255, 255, 255);
  static Color error = const Color.fromARGB(255, 255, 43, 43);

  // Global text themes
  final TextStyle darkTitleStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(
      color: veryDark,
      fontWeight: FontWeight.bold,
      fontFeatures: [],
      fontSize: 24));
  final TextStyle darkSubtitleStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(
      color: veryDark,
      fontWeight: FontWeight.w400,
      fontSize: 18));
  final TextStyle darkTextBlockStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(
    wordSpacing: 4,
      color: veryDark,
      fontWeight: FontWeight.w400,
      fontSize: 18));
  final TextStyle lightTitleStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(
      color: light,
      fontWeight: FontWeight.bold,
      fontSize: 18));
  final TextStyle lightSubtitleStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(
      color: light,
      fontWeight: FontWeight.bold,
      fontSize: 16));
  final TextStyle lightRegularStyle = GoogleFonts.robotoSlab(textStyle: TextStyle(color: light,  fontSize: 14));

  @override
  AppTheme copyWith() => null!;

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) =>
      other is! AppTheme ? this : null!;

  @override
  String toString() => '';

  static ThemeData getTheme() =>
      ThemeData(extensions: <ThemeExtension<dynamic>>[AppTheme()]);
}
