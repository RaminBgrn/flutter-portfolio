import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool event) builder;
  final VoidCallback onClick;

  const OnHover({required this.onClick, required this.builder, super.key});

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) => entered(true),
        onExit: (event) => entered(false),
        child: widget.builder(isHovered),
      ),
    );
  }

  void entered(bool event) {
    setState(() {
      isHovered = event;
    });
  }
}
