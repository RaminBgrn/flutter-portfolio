import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';

class Text3D extends StatelessWidget {
  final String text;
  final Color lightSideColor;
  final Color darkSideColor;
  final Color? textColor;
  final double? fontSize;
  final TextStyle? textStyle;

  const Text3D({
    required this.text,
    required this.lightSideColor,
    required this.darkSideColor,
    this.textColor,
    this.textStyle,
    this.fontSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.archivoNarrow(
        color: textColor ?? myGrey[800]!,
        fontSize: fontSize ?? 34,
        fontWeight: FontWeight.bold,
        letterSpacing: 3,
        textStyle: const TextStyle(overflow: TextOverflow.fade),
        shadows: [
          BoxShadow(
              offset: const Offset(-1, -1.5),
              blurRadius: 1,
              color: lightSideColor.withOpacity(0.4)),
          BoxShadow(
            offset: const Offset(1.5, 1),
            blurRadius: 2,
            color: darkSideColor.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
