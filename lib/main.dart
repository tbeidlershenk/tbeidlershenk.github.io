import 'package:flutter/material.dart';
import 'package:personal_website/sections/links.dart';
import 'package:personal_website/sections/mainHeader.dart';
import 'package:personal_website/sections/portfolio.dart';
import 'package:personal_website/sections/work.dart';
import 'package:personal_website/widgets/toolbar.dart';
import 'appcolorscheme.dart';
import 'sections/intro.dart';

// Main function
void main() {
  runApp(const App());
}

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tobias Beidler-Shenk | CS Student',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }

  // Change the theme
  void changeTheme() {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }
}

// Main Page layout

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double dividerIndent = (MediaQuery.of(context).size.width / 2.5);
    return Scaffold(
        body: Stack(children: [
      Center(
          child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                repeat: ImageRepeat.repeat,
                opacity: 0.25,
                image: Theme.of(context).colorScheme.backgroundImage),
          ),
          child: Column(
            children: <Widget>[
              MainHeader(),
              Divider(
                  thickness: 3,
                  indent: dividerIndent,
                  endIndent: dividerIndent),
              SizedBox(height: 20),
              Intro(),
              SizedBox(height: 20),
              Divider(
                  thickness: 3,
                  indent: dividerIndent,
                  endIndent: dividerIndent),
              SizedBox(height: 20),
              Portfolio(),
              SizedBox(height: 20),
              Divider(
                  thickness: 3,
                  indent: dividerIndent,
                  endIndent: dividerIndent),
              SizedBox(height: 20),
              Work(),
              SizedBox(height: 20),
              Divider(
                  thickness: 3,
                  indent: dividerIndent,
                  endIndent: dividerIndent),
              Links()
            ],
          ),
        ),
      )),
      const Align(alignment: Alignment.topLeft, child: Toolbar())
    ]));
  }
}
