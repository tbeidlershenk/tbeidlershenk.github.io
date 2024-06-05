import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/widgets/content.dart';
import 'package:personal_website/data.dart' as data;

class Projects extends StatefulWidget {
  Projects({
    super.key,
  });

  final List<Content> projectContent = data.projects;

  @override
  ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State<Projects> {
  int index = 0;

  void next() =>
      setState(() => index = (index + 1) % widget.projectContent.length);
  void prev() =>
      setState(() => index = (index - 1) % widget.projectContent.length);

  @override
  Widget build(BuildContext context) {
    Content selectedCard = widget.projectContent[index];
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleLeft),
          color: AppTheme.veryDark,
          onPressed: prev),
      Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.7),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(30),
        child: AnimatedSwitcher(
            transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
            duration: const Duration(seconds: 1),
            child: selectedCard),
      ),
      IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleRight),
          color: AppTheme.veryDark,
          onPressed: next),
    ]);
  }
}
