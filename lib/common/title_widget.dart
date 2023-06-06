import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final TextStyle? firstCharStyle;
  final TextStyle? style;

  const TitleWidget(
      {required this.title, this.firstCharStyle, this.style, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title[0],
        style: firstCharStyle ??
            GoogleFonts.archivoNarrow(
              color: myOrange[300],
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
        children: [
          TextSpan(
            text: title.substring(1, title.length),
            style: style ??
                GoogleFonts.archivoNarrow(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
