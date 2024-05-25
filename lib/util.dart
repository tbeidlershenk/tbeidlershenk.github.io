import 'package:flutter/material.dart';

Text getMarkdownText(String text, TextStyle baseStyle) {
  List<String> parts = text.split("**");
  List<TextSpan> textElements = [];
  bool bold = false;
  for (String part in parts) {
    TextSpan text = bold
        ? TextSpan(
            text: part, style: baseStyle.copyWith(fontWeight: FontWeight.bold))
        : TextSpan(text: part, style: baseStyle);

    textElements.add(text);
    bold = !bold;
  }
  return Text.rich(TextSpan(children: textElements));
}
