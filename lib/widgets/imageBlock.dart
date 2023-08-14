import 'package:flutter/material.dart';

class ImageBlock extends StatelessWidget {  
  const ImageBlock({
    super.key,
    required this.path,
  });
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.black), 
        borderRadius: BorderRadius.circular(5)),
      width: double.infinity, 
      margin: const EdgeInsets.all(5), 
      child: Image.asset(path, fit: BoxFit.contain)
    );
  }
}