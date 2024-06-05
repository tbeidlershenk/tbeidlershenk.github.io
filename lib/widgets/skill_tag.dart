import 'dart:math';

import 'package:flutter/material.dart';

class SkillTag extends StatelessWidget {
  SkillTag({super.key, required this.text});

  final List<Color> colors = [
    const Color.fromARGB(255, 0, 162, 92),
    const Color.fromARGB(255, 37, 132, 255),
    const Color.fromARGB(255, 204, 0, 160),
    const Color.fromARGB(255, 255, 45, 45),
    const Color.fromARGB(255, 255, 117, 42),
  ];

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colors[Random().nextInt(colors.length)]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            child: Text(text,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1))),
          )),
    );
  }
}
