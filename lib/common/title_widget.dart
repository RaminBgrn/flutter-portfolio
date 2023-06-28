import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styled_text/styled_text.dart';
import 'package:web_testing/common/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final int index;
  final TextStyle? firstCharStyle;
  final TextStyle? style;
  final double? firstCharFontSize;
  final double? fonstSize;

  const TitleWidget(
      {required this.title,
      this.firstCharStyle,
      this.style,
      this.firstCharFontSize,
      this.fonstSize,
      this.index = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text:
          "<b>${title.substring(0, index + 1)}</b>${title.substring(index + 1, title.length)}",
      style: firstCharStyle ??
          GoogleFonts.vazirmatn(
            color: myGrey[200],
            fontSize: firstCharFontSize ?? 24,
            fontWeight: FontWeight.bold,
          ),
      tags: {
        "b": StyledTextTag(
          style: firstCharStyle ??
              GoogleFonts.vazirmatn(
                color: myOrange[300],
                fontSize: firstCharFontSize ?? 24,
                fontWeight: FontWeight.bold,
              ),
        )
      },
    );
  }
}
