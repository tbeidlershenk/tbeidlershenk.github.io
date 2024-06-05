import 'package:flutter/material.dart';
import 'package:personal_website/widgets/link_options.dart';
import 'package:personal_website/widgets/navigation_options.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionArea(
        child: Stack(children: [
          Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      opacity: 1,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background1.jpg")))),
          Center(child: body),
          const NavigationOptions(),
          const LinkOptions()
        ]),
      ),
    );
  }
}
