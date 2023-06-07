import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';

class SkillItem extends StatefulWidget {
  final Color iconBackgroundColor;
  final String itemDecription;
  final String iconPath;
  final String title;
  final Color textLightSideColor;
  final double? fontSize;
  const SkillItem(
      {required this.iconBackgroundColor,
      required this.iconPath,
      required this.title,
      required this.itemDecription,
      required this.textLightSideColor,
      this.fontSize,
      super.key});

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    Future.delayed(const Duration(milliseconds: 200), () {
      _animationController.reverse();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _animationController.forward(),
      onExit: (event) => _animationController.reverse(),
      child: Container(
        width: 220,
        height: 220,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: myGrey[900],
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(-1, -1),
                  color: myGrey[800]!,
                  blurRadius: 2),
              BoxShadow(
                  offset: const Offset(1, 1),
                  color: Colors.black.withOpacity(0.7),
                  blurRadius: 4),
            ]),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.archivoNarrow(
                        color: myGrey[200],
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  CustomDevider(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        myOrange[400]!.withOpacity(0.5),
                        Colors.transparent
                      ],
                      width: 100,
                      height: 1)
                ],
              ),
            )
                .animate(controller: _animationController)
                .moveX(begin: -20)
                .fadeIn(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                widget.itemDecription,
                textAlign: TextAlign.justify,
                style: GoogleFonts.archivoNarrow(
                    color: myGrey[200],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
                  .animate(controller: _animationController)
                  .moveY(begin: 20)
                  .fadeIn(),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            myBlue[400]!.withOpacity(0.5),
                            Colors.transparent,
                          ]),
                    ),
                    child: Image.asset(
                      widget.iconPath,
                      width: 70,
                      height: 70,
                    ),
                  )
                      .animate(controller: _animationController)
                      .scale(
                          begin: const Offset(1, 1),
                          end: const Offset(0.5, 0.5))
                      .move(end: const Offset(60, -40)),
                  Text(
                    widget.title,
                    style: GoogleFonts.archivoNarrow(
                        color: myGrey[200],
                        fontSize: widget.fontSize ?? 30,
                        fontWeight: FontWeight.bold),
                  ).animate(controller: _animationController).fadeOut(begin: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
