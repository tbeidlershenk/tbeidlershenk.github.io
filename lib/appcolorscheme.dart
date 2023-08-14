import 'package:flutter/material.dart';

extension AppColorScheme on ColorScheme{
  Color get backgroundPrimaryColor => brightness == Brightness.light
    ? const Color.fromARGB(255, 233, 147, 255)
    : const Color.fromARGB(255, 57, 0, 71);
  Color get backgroundSecondaryColor => brightness == Brightness.light
    ? const Color.fromARGB(255, 74, 198, 236)
    : const Color.fromARGB(255, 6, 9, 151);
  AssetImage get backgroundImage => brightness == Brightness.light
    ? const AssetImage("assets/backgrounds/light-grey-terrazzo.webp")
    : const AssetImage("assets/backgrounds/dark-grey-terrazzo.webp");
  Color get textCardPrimaryColor => brightness == Brightness.light 
    ? const Color.fromARGB(255, 243, 176, 255)
    : const Color.fromARGB(255, 243, 176, 255);
  Color get textCardSecondaryColor => brightness == Brightness.light 
    ? const Color.fromARGB(255, 255, 255, 255)
    : const Color.fromARGB(255, 255, 255, 255);
  Color get headerMainTextColor => brightness == Brightness.light
    ? Colors.white
    : Colors.white;
  Color get headerSubtitleTextColor => brightness == Brightness.light
    ? Colors.black
    : Colors.white;
  Color get dividerColor => brightness == Brightness.light
    ? Colors.white
    : Colors.white;
  Color get portfolioCardPrimaryColor => brightness == Brightness.light
    ? const Color.fromARGB(255, 243, 176, 255)
    : const Color.fromARGB(255, 243, 176, 255);
  Color get portfolioCardSecondaryColor => brightness == Brightness.light
    ? const Color.fromARGB(255, 255, 255, 255)
    : const Color.fromARGB(255, 255, 255, 255);
}