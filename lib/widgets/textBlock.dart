import 'package:flutter/material.dart';
import '../appcolorscheme.dart';

/// Creates a Text block for intro section
class TextBlock extends StatelessWidget {  
  const TextBlock({
    super.key,
    required this.text,
  });
  final TextSpan text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.cardBorderColor, width: 3),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.cardPrimaryColor,
            Theme.of(context).colorScheme.cardSecondaryColor],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
        ),
        borderRadius: BorderRadius.all(Radius.circular(3))
      ),
      width: double.infinity, 
      margin: const EdgeInsets.all(5), 
      padding: const EdgeInsets.all(5),
      child: RichText(text: text));
  }
}