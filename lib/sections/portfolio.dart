import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/widgets/timelineDateCard.dart';
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
  Widget build(BuildContext context) {
    List<TimelineCard> projects = [
      const TimelineCard(
          title: "Lost @ Pitt",
          subtitle: "2nd place @ SteelHacks 2023",
          date: "March 2023",
          text: "A web application to help students on Pitt's campus retrieve lost items. \n\nBuilt using **Flutter, Dart, and Firebase.**",
          images: ["assets/images/lostatpitt.png"],
          link: "https://github.com/Steelhacks-2023/Lost-and-Found-Steelhacks"),
      const TimelineCard(
          title: "Astralnaut",
          subtitle: "Personal Project",
          date: "February 2023",
          text: "A 2-D space-shooter game developed using the **Godot** game engine.\n\nProgrammed in **GDScript**, created sprites & animations using pixel art tools.",
          images: [
            "assets/images/astralnaut1.png",
            "assets/images/astralnaut2.png"
          ],
          link: "https://github.com/tbeidlershenk/Astralnaut"),
      const TimelineCard(
          title: "Pool Simulation",
          subtitle: "Personal Project",
          date: "August 2022",
          text: "A pool (billiards) simulation programmed in **Python** using the **PyGame** library.\n\nImplemented linear collisions and frictional forces.",
          images: ["assets/images/poolsimulation.png"],
          link: "https://github.com/tbeidlershenk/Billiards-Simulation")
    ];
    return SizedBox(
      width: 0.6 * MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Projects",
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
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(20),
                child: TimelineDateCard(text: projects[index].date),
              ),
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
                        Theme.of(context).colorScheme.cardPrimaryColor,
                        Theme.of(context)
                            .colorScheme
                            .cardSecondaryColor
                      ])),
                  child: IconButton(
                      color: Colors.purple,
                      icon: const Icon(Icons.link_outlined, size: 25),
                      onPressed: () {
                        String link = projects[index].link;
                        launchUrlString(link);
                      }),
                ),
              )),
              itemCount: projects.length,
            ),
          ),
        ],
      ),
    );
  }
}
