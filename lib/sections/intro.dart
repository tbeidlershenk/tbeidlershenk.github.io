import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../main.dart';
import '../widgets/imageBlock.dart';
import '../widgets/textBlock.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  Future<void> readIntroText() async {
    final String response =
        await rootBundle.loadString('assets/introText.dart');
    final List<String> data = await json.decode(response);
    createState();
  }

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) => getIntroBody(context);

  SizedBox getIntroBody(BuildContext context) {
    TextStyle style =
        GoogleFonts.robotoCondensed(fontSize: 20, color: Colors.black);
    List<Widget> blocks = [
      TextBlock(
          text: TextSpan(
              text: "Hi there! Welcome to my website 👋", style: style)),
      ImageBlock(path: "assets/images/headshot.jpg"),
      TextBlock(
          text: TextSpan(
              text:
                  "I grew up in Philadelphia, and I'm currently a junior at the University of Pittsburgh, studying CS & math. \n\nI've always loved solving problems & building cool things, and after discovering programming in my senior year of high school, I was hooked.",
              style: style)),
      TextBlock(
          text: TextSpan(children: [
        TextSpan(
            text:
                "Within the realm of CS, I'm mainly interested in software development, with experience developing UIs, backend programming, and software testing. \n\nSpecifically, I have worked extensively with "),
        TextSpan(
            text: "Java, C#, Dart, Python & MySQL",
            style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: ". Check out my ", style: style),
        TextSpan(
          text: "resume! ",
          style: const TextStyle(
            color: Colors.blue,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => launchUrlString(
                'https://drive.google.com/file/d/1UCC9sQ0SIjUE2FOMOi7JFhVbyWfubtxp/view'),
        ),
      ], style: style)),
      ImageBlock(path: "assets/images/theboysatknob.jpeg"),
      ImageBlock(path: "assets/images/steelhacks.JPG"),
      TextBlock(
          text: TextSpan(
              text:
                  "In my free time I enjoy distance running, the perfect complement (in my opinion!) to my tech-heavy workload 🖥️",
              style: style)),
      TextBlock(
          text: TextSpan(
              text:
                  "Feel free to check out my projects & links below, and don't hesitate to reach out 🙂",
              style: style)),
    ];
    return SizedBox(
      height: 910,
      width: 0.6 * MediaQuery.of(context).size.width,
      child: MasonryGridView.builder(
        itemCount: blocks.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) =>
            Padding(padding: const EdgeInsets.all(8.0), child: blocks[index]),
      ),
    );
  }
}
