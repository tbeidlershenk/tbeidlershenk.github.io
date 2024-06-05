import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_website/resources/themes.dart';
import 'package:personal_website/util.dart';
import 'package:personal_website/widgets/image_slideshow.dart';
import 'package:personal_website/widgets/skill_tag.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Content extends StatelessWidget {
  const Content(
      {super.key,
      required this.imagePaths,
      required this.skills,
      required this.title,
      this.subtitle,
      required this.dates,
      required this.description,
      this.githubLink});
  final List<String> imagePaths;
  final List<String> skills;
  final String title;
  final String? subtitle;
  final String dates;
  final String description;
  final String? githubLink;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    final width = MediaQuery.of(context).size.width / 4;

    TextSpan title() =>
        TextSpan(text: this.title, style: theme.darkTitleStyle);
    InlineSpan githubLink() => this.githubLink == null
        ? const TextSpan()
        : WidgetSpan(
            child: IconButton(
                icon: const FaIcon(FontAwesomeIcons.link),
                iconSize: 14,
                color: AppTheme.veryDark,
                onPressed: () => launchUrlString(this.githubLink!)));
    TextSpan subtitle() => this.subtitle == null
        ? const TextSpan(text: "")
        : TextSpan(text: "\n${this.subtitle}", style: theme.darkSubtitleStyle);
    TextSpan dates() =>
        TextSpan(text: this.dates, style: theme.darkSubtitleStyle);
    TextSpan newline() => const TextSpan(text: "\n");
    InlineSpan description() =>
        getMarkdownText(this.description, theme.darkTextBlockStyle);

    Widget left() {
      List<InlineSpan> spans = [
        title(),
        githubLink(),
        subtitle(),
        newline(),
        dates(),
        newline(),
        newline(),
        description(),
        newline(),
        newline(),
      ];
      spans.addAll(skills.map((e) => WidgetSpan(child: SkillTag(text: e))));
      return SizedBox(
        width: width,
        child: Text.rich(TextSpan(children: spans),
            textAlign: TextAlign.left, style: theme.darkTitleStyle),
      );
    }

    Widget right() =>
        ImageSlideshow(paths: imagePaths, width: 200, height: 200);

    return IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [left(), SizedBox(width: width / 6), right()]));
  }
}
