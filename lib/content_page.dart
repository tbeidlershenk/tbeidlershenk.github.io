import 'package:flutter/material.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/widgets/link_options.dart';
import 'package:personal_website/widgets/navigation_options.dart';

class ContentPage extends StatelessWidget {  
  const ContentPage({
    super.key,
    required this.body
  });
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    return Scaffold(
      body: SelectionArea(
        child: Stack(children: [
          Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      opacity: 0.4,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background.jpg")))),
          body,
          NavigationOptions(),
          LinkOptions()
        ]),
      ),
    );
  }
}