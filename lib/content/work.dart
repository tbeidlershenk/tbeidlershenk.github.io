import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/widgets/content.dart';
import 'package:personal_website/data.dart' as data;

class Work extends StatefulWidget {
  Work({
    super.key,
  });

  final List<Content> workContent = data.work;

  @override
  ProjectsState createState() => ProjectsState();
}

class ProjectsState extends State<Work> {
  int index = 0;

  void next() =>
      setState(() => index = (index + 1) % widget.workContent.length);
  void prev() =>
      setState(() => index = (index - 1) % widget.workContent.length);

  @override
  Widget build(BuildContext context) {
    Content selectedCard = widget.workContent[index];
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
            duration: const Duration(milliseconds: 1000), child: selectedCard),
      ),
      IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleRight),
          color: AppTheme.veryDark,
          onPressed: next),
    ]);
  }
}
