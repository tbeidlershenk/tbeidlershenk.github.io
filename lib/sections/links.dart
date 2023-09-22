import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Links extends StatefulWidget {  
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
            width: 0.6 * MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              IconButton(icon: const FaIcon(FontAwesomeIcons.github), onPressed: () {
                launchUrlString("https://github.com/tbeidlershenk");
              }),
              IconButton(icon: const FaIcon(FontAwesomeIcons.linkedin), onPressed: () {
                launchUrlString("https://www.linkedin.com/in/tobias-beidler-shenk-681406221/");
              }),
              IconButton(icon: const FaIcon(Icons.description), onPressed: () {
                launchUrlString("https://flowcv.com/resume/qsqv6o0el5");
              }),
            ],)
      ),
    );
  }
}