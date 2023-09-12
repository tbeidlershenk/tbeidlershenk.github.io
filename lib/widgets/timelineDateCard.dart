import 'package:flutter/material.dart';
import '../appcolorscheme.dart';

/// Creates a Text block for intro section
class TimelineDateCard extends StatelessWidget {  
  const TimelineDateCard({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 2, color: Theme.of(context).colorScheme.cardBorderColor),
        color: Color.fromARGB(160, 255, 168, 232)
      ),
      margin: const EdgeInsets.all(5), 
      padding: const EdgeInsets.all(5),
      child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,)));
  }
}