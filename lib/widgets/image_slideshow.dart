import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personal_website/resources/themes.dart';

class ImageSlideshow extends StatefulWidget {
  ImageSlideshow(
      {super.key,
      required this.paths,
      required this.height,
      required this.width});

  List<String> paths;
  final double height;
  final double width;

  @override
  ImageSlideshowState createState() => ImageSlideshowState();
}

class ImageSlideshowState extends State<ImageSlideshow> {
  int _currentIndex = 0;

  Timer? _timer;
  List<Widget> _images = [];

  @override
  void initState() {
    print("here");

    super.initState();
    print(widget.paths);
    if (widget.paths.length <= 1) {
      return;
    }
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      if (mounted) {
        setState(() {
          if (_currentIndex + 1 == _images.length) {
            _currentIndex = 0;
          } else {
            _currentIndex = _currentIndex + 1;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget createImageContainer(String path, int key) {
    return ClipRRect(
        key: ValueKey<int>(key),
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(path));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;
    int i = 0;
    _images = [];
    widget.paths
        .forEach((path) => _images.add(createImageContainer(path, i++)));
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: widget.width,
              height: widget.height,
              child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  child: _images[_currentIndex]))
        ],
      ),
    );
  }
}
