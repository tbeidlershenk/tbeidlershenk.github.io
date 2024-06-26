import 'package:flutter/material.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/util.dart';
import '../widgets/image_slideshow.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const ImageSlideshow(paths: [
        "assets/images/headshot_basic.jpg",
        "assets/images/steelhacks.JPG",
        "assets/images/theboysatknob.jpeg",
        "assets/images/altoona.jpg"
      ], width: 300, height: 300),
      const SizedBox(width: 100),
      Container(
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(10),
          width: 400,
          child: Text.rich(TextSpan(children: [
            getMarkdownText(
                "My name is Toby, and I am an aspiring **entrepreneur** and **software developer**! I have a passion for building software, both in individual and team settings. My interests spread across the field of tech, from **frontend & backend** development, to **QA**, to **dev-ops** and **project management**.\n\n",
                theme.darkTextBlockStyle),
            getMarkdownText(
                "Right now, I'm a senior at the University of Pittsburgh, majoring in **Computer Science** with a minor in **Mathematics**, with an anticipated graduation date of May 2025.\n\n",
                theme.darkTextBlockStyle),
            getMarkdownText(
                "I'm currently training for my first two marathons (Philadelphia and Pittsburgh!) and also enjoy climbing and hiking in my free time.",
                theme.darkTextBlockStyle)
          ])))
    ]));
  }
}
