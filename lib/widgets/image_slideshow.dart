import 'dart:async';
import 'package:flutter/material.dart';

class ImageSlideshow extends StatefulWidget {
  const ImageSlideshow(
      {super.key,
      required this.paths,
      required this.height,
      required this.width});

  final List<String> paths;
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
    super.initState();
    if (widget.paths.length <= 1) return;
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      if (!mounted) return;
      setState(() => _currentIndex =
          _currentIndex + 1 == _images.length ? 0 : _currentIndex + 1);
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
    int i = 0;
    _images = [];
    widget.paths
        .forEach((path) => _images.add(createImageContainer(path, i++)));
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
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
