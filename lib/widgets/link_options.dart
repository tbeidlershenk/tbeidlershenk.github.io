import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkOptions extends StatelessWidget {
  const LinkOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                launchUrlString("https://github.com/tbeidlershenk");
              }),
          IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {
                launchUrlString(
                    "https://www.linkedin.com/in/tobias-beidler-shenk-681406221/");
              }),
          IconButton(
              icon: const FaIcon(Icons.description),
              onPressed: () {
                launchUrlString("https://flowcv.com/resume/qsqv6o0el5");
              }),
        ]),
      ),
    );
  }
}
