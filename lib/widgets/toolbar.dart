import 'package:flutter/material.dart';
import 'package:personal_website/main.dart';

/// Toolbar widget for the main page
class Toolbar extends StatefulWidget {
  const Toolbar({super.key});

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  double? opacity;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        child: SizedBox(
          width: 50,
          child: Opacity(
            opacity: opacity ?? 0.2,
            child: Column(
              children: [
                const Spacer(),
                IconButton(
                    icon: const Icon(Icons.dark_mode),
                    onPressed: () => context
                        .findAncestorStateOfType<AppState>()
                        ?.changeTheme()),
              ],
            ),
          ),
        ),
        onEnter: (event) => setState(() {
              opacity = 1.0;
            }),
        onExit: (event) => setState(() {
              opacity = 0.2;
            }));
  }
}
