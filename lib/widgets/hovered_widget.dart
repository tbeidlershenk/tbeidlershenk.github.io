import 'package:flutter/material.dart';

class HoveredWidget extends StatefulWidget {
  const HoveredWidget({super.key, required this.child});

  final Widget child;

  @override
  State<HoveredWidget> createState() => _HoveredWidgetState();
}

class _HoveredWidgetState extends State<HoveredWidget> {
  bool hovered = false;

  void onMouse(bool entered) => setState(() => hovered = entered);

  @override
  Widget build(BuildContext context) {
    // final hoveredTransform = Matrix4.identity()..scale(1.1);
    // final transform = hovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        onHover: (event) => onMouse(true),
        onExit: (event) => onMouse(false),
        child: AnimatedContainer(
            duration: const Duration(seconds: 1), child: widget.child));
  }
}
