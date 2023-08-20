import 'package:flutter/material.dart';
import 'package:personal_website/appcolorscheme.dart';

class TimelineCard extends StatelessWidget {
  const TimelineCard(
      {super.key,
      required this.link,
      required this.date,
      required this.title,
      required this.subtitle,
      required this.images,
      required this.text});

  final String link;
  final String date;
  final String title;
  final String subtitle;
  final List<String> images;
  final String text;

  @override
  Widget build(BuildContext context) {
    List<Padding> displayImages = [];
    double size = 100;
    for (String image in images) {
      displayImages.add(Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)))),
      ));
      size *= 0.7;
    }
    return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.portfolioCardPrimaryColor,
                  Theme.of(context).colorScheme.portfolioCardSecondaryColor
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    Expanded(
                      child: Text(subtitle,
                          style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black)),
                    ),
                    const Divider(),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(text,
                                style: const TextStyle(color: Colors.black)),
                          ),
                          SizedBox(
                            width: 110,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: displayImages),
                          )
                        ]),
                  ]),
            )));
  }
}
