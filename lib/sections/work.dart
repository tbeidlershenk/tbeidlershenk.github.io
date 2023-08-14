import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../appcolorscheme.dart';
import '../widgets/timelineCard.dart';

class Work extends StatefulWidget {  
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {

  @override
  Widget build(BuildContext context){
    List<TimelineCard> projects = [
      const TimelineCard(
        title: "SWE Intern\nDynamics Inc", 
        date: "Pittsburgh, PA\nMay - August 2023", 
        text: "", 
        images: ["assets/images/dynamicsinc.webp"],
        link: ""),
      const TimelineCard(
        title: "Undergraduate Teaching Assistant\nUniversity of Pittsburgh", 
        date: "Pittsburgh, PA\nAugust 2022 - present", 
        text: "",
        images: [],
        link: ""),
    ];
    return SizedBox(
      width: 0.6 * MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
              "Work Experience",
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