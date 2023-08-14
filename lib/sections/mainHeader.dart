import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appcolorscheme.dart';

class MainHeader extends StatefulWidget {  
  const MainHeader({super.key});

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
          fit: BoxFit.fill, 
          image: AssetImage("assets/backgrounds/skyline.webp"))), 
      height: 250, 
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomLeft, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          "Tobias\nBeidler-Shenk", 
          style: GoogleFonts.robotoCondensed(
            height: 1,
            fontSize: 80, 
            fontWeight: FontWeight.w900,
            letterSpacing: 10,
            color: Theme.of(context).colorScheme.headerMainTextColor,
          )),

        Text(
          "Computer Science & Mathematics - University of Pittsburgh", 
          style: GoogleFonts.robotoCondensed(
            fontSize: 25, 
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.headerMainTextColor))
      ]
    ));
  }
}