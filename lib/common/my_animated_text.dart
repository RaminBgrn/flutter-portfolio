import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class MyAnimatedText extends StatelessWidget {
  final double? textSize;
  const MyAnimatedText({this.textSize, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          'Web Developer',
          speed: const Duration(milliseconds: 200),
          cursor: " ",
          curve: Curves.bounceIn,
          textStyle: GoogleFonts.dongle(
            fontSize: textSize ?? 24,
            color: myOrange[50],
            fontWeight: FontWeight.w400,
          ),
        ),
        TypewriterAnimatedText(
          'Mobile Developer',
          speed: const Duration(milliseconds: 200),
          cursor: " ",
          curve: Curves.easeIn,
          textStyle: GoogleFonts.dongle(
            fontSize: textSize ?? 24,
            color: myOrange[50],
            fontWeight: FontWeight.w400,
          ),
        ),
        TypewriterAnimatedText(
          'Flutter Developer',
          speed: const Duration(milliseconds: 200),
          cursor: " ",
          curve: Curves.bounceInOut,
          textStyle: GoogleFonts.dongle(
            fontSize: textSize ?? 24,
            color: myOrange[50],
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
