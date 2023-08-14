import 'package:flutter/material.dart';
import '../appcolorscheme.dart';


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
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.textCardPrimaryColor,
            Theme.of(context).colorScheme.textCardSecondaryColor],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp),
        //border: Border.all(width: 3, color: Colors.black), 
        borderRadius: const BorderRadius.all(Radius.circular(5))),
      width: double.infinity, 
      margin: const EdgeInsets.all(5), 
      padding: const EdgeInsets.all(5),
      child: RichText(text: text));
  }
}