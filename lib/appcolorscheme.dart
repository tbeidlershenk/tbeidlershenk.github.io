import 'package:flutter/material.dart';

/// Defines the color scheme and background data for the dark and light themes of the website
/// Accessed via Theme.of(context).colorScheme.<themeName>
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
  Color get cardPrimaryColor => brightness == Brightness.light 
    ? Color.fromARGB(255,238,227,253)
    : const Color.fromARGB(255, 255, 128, 215);
  Color get cardSecondaryColor => brightness == Brightness.light 
    ? Color.fromARGB(255, 254, 244, 226)
    : const Color.fromARGB(255, 255, 255, 255);
  Color get cardBorderColor => brightness == Brightness.light 
    ? Color.fromARGB(255, 190, 168, 190)
    : Color.fromARGB(255, 93, 0, 93);
  Color get headerMainTextColor => brightness == Brightness.light
    ? Colors.white
    : Colors.white;
  Color get headerSubtitleTextColor => brightness == Brightness.light
    ? Colors.black
    : Colors.white;
  Color get dividerColor => brightness == Brightness.light
    ? Colors.white
    : Colors.white;
}