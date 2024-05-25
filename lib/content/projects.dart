import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/widgets/content.dart';
import 'package:personal_website/data.dart' as data;
import 'package:swipeable_cards_stack/swipeable_cards_stack.dart';

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
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleLeft),
          color: AppTheme.veryDark,
          onPressed: prev),
      AnimatedSwitcher(
          transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
          duration: const Duration(milliseconds: 1000),
          child: selectedCard),
      IconButton(
          icon: const FaIcon(FontAwesomeIcons.angleRight),
          color: AppTheme.veryDark,
          onPressed: next),
    ]);
  }
}
