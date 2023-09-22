import 'package:flutter/material.dart';
import 'package:personal_website/appcolorscheme.dart';

/// Creates an Image block for Intro section
class ImageBlock extends StatelessWidget {  
  const ImageBlock({
    super.key,
    required this.path,
  });
  final String path;

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
          border: Border.all(width: 2, color: Theme.of(context).colorScheme.cardBorderColor), 
          borderRadius: BorderRadius.circular(3)),
        width: double.infinity, 
        child: Image.asset(path, fit: BoxFit.contain)
      ),
    );
  }
}