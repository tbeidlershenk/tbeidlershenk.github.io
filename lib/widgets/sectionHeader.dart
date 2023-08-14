import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/appcolorscheme.dart';

class SectionHeader extends StatelessWidget {  
  const SectionHeader({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.6 * MediaQuery.of(context).size.width,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.robotoCondensed(
              fontSize: 25, 
              color: Theme.of(context).colorScheme.headerSubtitleTextColor)),
          Divider(
            thickness: 3, 
            indent: 100,
            endIndent: 100,
            color: Theme.of(context).colorScheme.dividerColor)
        ]
      ),
    );
  }
}