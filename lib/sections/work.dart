import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../appcolorscheme.dart';
import '../widgets/timelineCard.dart';
import '../widgets/timelineDateCard.dart';

class Work extends StatefulWidget {
  const Work({super.key});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    List<TimelineCard> projects = [
      const TimelineCard(
          title: "SWE Intern",
          subtitle: "Dynamics Inc - Pittsburgh, PA",
          date: "May - August 2023",
          text: "Planned, developed and tested an internal database application using **WPF** and **.Net** frameworks, **C#** and **MySQL**.\n\nAdditionally, worked on other tickets from the team's backlog.",
          images: ["assets/images/dynamicsinc.webp"],
          link: ""),
      const TimelineCard(
          title: "Undergraduate Teaching Assistant",
          subtitle: "University of Pittsburgh - Pittsburgh, PA",
          date: "August 2022 - present",
          text: "Lead recitation sections, facilitated brief lecture content reviews and helped students with assignments.\n\n**CS 11** - Intro to Python\n**CS 401** - Programming in Java\n**CS 449** - Systems Software",
          images: ["assets/images/pitt.jpg"],
          link: ""),
    ];
    return SizedBox(
      width: 0.6 * MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Work Experience",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          .headerSubtitleTextColor)),
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(),
            builder: TimelineTileBuilder.connected(
              contentsAlign: ContentsAlign.alternating,
              oppositeContentsBuilder: (context, index) => TimelineDateCard(text: projects[index].date),
              contentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 40),
                child: projects[index],
              ),
              firstConnectorBuilder: (context) => DecoratedLineConnector(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3)),
                thickness: 3,
              ),
              connectorBuilder: (context, index, type) =>
                  const SolidLineConnector(
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
                          Theme.of(context)
                              .colorScheme
                              .cardPrimaryColor,
                          Theme.of(context)
                              .colorScheme
                              .cardSecondaryColor
                        ])),
                    child: Icon(
                      size: 35,
                      color: Colors.purple,
                      Icons.circle_outlined,
                    )),
              )),
              itemCount: projects.length,
            ),
          ),
        ],
      ),
    );
  }
}
