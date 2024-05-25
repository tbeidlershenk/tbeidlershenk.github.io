import 'package:flutter/material.dart';
import 'package:personal_website/resources/themes.dart';

class NavigationOptions extends StatelessWidget {
  const NavigationOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextButton(
              child: Text("Home", style: theme.darkSubtitleStyle),
              onPressed: () => Navigator.pushNamed(context, "/")),
          TextButton(
              child: Text("About", style: theme.darkSubtitleStyle),
              onPressed: () => Navigator.pushNamed(context, "/about")),
          TextButton(
              child: Text("Work", style: theme.darkSubtitleStyle),
              onPressed: () => Navigator.pushNamed(context, "/work")),
          TextButton(
              child: Text("Projects", style: theme.darkSubtitleStyle),
              onPressed: () => Navigator.pushNamed(context, "/projects"))
        ]),
      ),
    );
  }
}

