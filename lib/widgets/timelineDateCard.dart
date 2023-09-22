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
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.cardPrimaryColor,
              Theme.of(context).colorScheme.cardSecondaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: const [0.0, 1.0],
          ),
        ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(width: 2, color: Theme.of(context).colorScheme.cardBorderColor),
        ),
        padding: const EdgeInsets.all(5),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,))),
    );
  }
}