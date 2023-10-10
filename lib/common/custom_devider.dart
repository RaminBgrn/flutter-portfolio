import 'package:flutter/material.dart';

class CustomDevider extends StatelessWidget {
  final Alignment begin;
  final Alignment end;
  final List<Color> colors;
  final double width;
  final double height;
  final EdgeInsets? margin;
  const CustomDevider(
      {required this.begin,
      required this.end,
      required this.colors,
      required this.width,
      required this.height,
      this.margin,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
