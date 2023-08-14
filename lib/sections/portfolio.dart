import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../appcolorscheme.dart';
import '../widgets/timelineCard.dart';

class Portfolio extends StatefulWidget {  
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  @override
  Widget build(BuildContext context){
    List<TimelineCard> projects = [
      const TimelineCard(
        title: "Lost @ Pitt", 
        date: "March 2023", 
        text: "A web application to help students on Pitt's campus retrieve lost items. Built using Flutter, Dart, and Firebase.\n\n2nd place winner @ SteelHacks 2023 hackathon", 
        images: ["assets/images/lostatpitt.png"],
        link: "https://github.com/Steelhacks-2023/Lost-and-Found-Steelhacks"),
      const TimelineCard(
        title: "Astralnaut", 
        date: "February 2023", 
        text: "A 2-D space-shooter game developed using the Godot game engine. Programmed in GDScript, created sprites & animations",
        images: ["assets/images/astralnaut1.png","assets/images/astralnaut2.png"],
        link: "https://github.com/tbeidlershenk/Astralnaut"),
      const TimelineCard(
        title: "Pool Simulation", 
        date: "August 2022", 
        text: "A pool (billiards) simulation programmed in Python using the PyGame library.",
        images: ["assets/images/poolsimulation.png"],
        link: "https://github.com/tbeidlershenk/Billiards-Simulation")
    ];
    return SizedBox(
      width: 0.6 * MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide(width: 3, color: Colors.black))
            // ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              "Projects",
              style: GoogleFonts.robotoCondensed(
                fontSize: 25, 
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.headerSubtitleTextColor)),
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(

            ),
            builder: TimelineTileBuilder.connected(
              contentsAlign: ContentsAlign.alternating,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: RichText(text: TextSpan(text: projects[index].date, style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.headerSubtitleTextColor))),
              ),
              contentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 40),
                child: projects[index],
              ),
              firstConnectorBuilder: (context) => DecoratedLineConnector(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3)
                ),
                thickness: 3,
              ),
              connectorBuilder: (context, index, type) => const SolidLineConnector(
                color: Colors.black,
                thickness: 3,
              ),
              indicatorBuilder: (context, index) => ContainerIndicator(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3),
                      gradient: LinearGradient(colors: [
                        Theme.of(context).colorScheme.portfolioCardPrimaryColor,
                        Theme.of(context).colorScheme.portfolioCardSecondaryColor
                      ])
                    ),
                    child: IconButton(
                      color: Colors.purple, 
                      icon: const Icon(Icons.link_outlined), 
                      onPressed: () {
                        String link = projects[index].link;
                        launchUrlString(link);
                      }),
                  ),
                )
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}