import 'package:flutter/material.dart';
import 'package:personal_website/appcolorscheme.dart';

/// Creates a card for a timeline
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
                border: Border.all(width: 3, color: Theme.of(context).colorScheme.cardBorderColor),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)))),
      ));
      size *= 0.7;
    }
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
            border: Border.all(color: Theme.of(context).colorScheme.cardBorderColor, width: 2),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.cardPrimaryColor,
                Theme.of(context).colorScheme.cardSecondaryColor],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: const [0.0, 1.0],
            ),
            borderRadius: BorderRadius.all(Radius.circular(3))
          ),
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
                              child: RichText(text: createStylizedTextWidget(text))
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
              ))),
    );
  }

  /// Parse text to bold keywords
  /// Return TextSpan with bolded sections
  TextSpan createStylizedTextWidget(String text) {
    List<TextSpan> fullText = <TextSpan>[];
    List<String> boldText = text.split("**");
    bool bold = false;
    for (String s in boldText) {
      fullText.add(TextSpan(text: s, style: bold 
        ? const TextStyle(fontWeight: FontWeight.bold) 
        : const TextStyle(fontWeight: FontWeight.normal)));
      bold = !bold;
    }
    return TextSpan(
      children: fullText
    );
  }
}
