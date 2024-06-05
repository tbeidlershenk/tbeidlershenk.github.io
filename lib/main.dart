import 'package:flutter/material.dart';
import 'package:personal_website/content/about.dart';
import 'package:personal_website/content/projects.dart';
import 'package:personal_website/content/work.dart';
import 'package:personal_website/landing_page.dart';
import 'package:personal_website/resources/route.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/content_page.dart';

// Main function
void main() => runApp(const App());

// Material App

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();

  static AppState of(BuildContext context) =>
      context.findAncestorStateOfType<AppState>()!;
}

class AppState extends State<App> {
  ThemeMode themeMode = ThemeMode.light;

  static Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return FadeInRoute(page: const LandingPage(), routeName: settings.name);
      case '/about':
        return FadeInRoute(
            page: const ContentPage(body: About()), routeName: settings.name);
      case '/work':
        return FadeInRoute(
            page: ContentPage(body: Work()), routeName: settings.name);
      case '/projects':
        return FadeInRoute(
            page: ContentPage(body: Projects()), routeName: settings.name);
    }
    throw UnsupportedError('Unknown route: ${settings.name}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tobias Beidler-Shenk | CS Student',
      theme: AppTheme.getTheme(),
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _onGenerateRoute,
    );
  }
}
