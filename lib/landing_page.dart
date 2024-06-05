import 'package:flutter/material.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/widgets/link_options.dart';
import 'package:personal_website/widgets/navigation_options.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Scaffold(
        body: SelectionArea(
      child: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/background2.jpg")))),
        Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage("assets/images/headshot.jpg")))),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Tobias Beidler-Shenk",
                      style: theme.lightTitleStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("CS & Math | University of Pittsburgh",
                      style: theme.lightSubtitleStyle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("tbeidlershenk@gmail.com",
                      style: theme.lightRegularStyle),
                )
              ]),
        ),
        const NavigationOptions(),
        const LinkOptions()
      ]),
    ));
  }
}
