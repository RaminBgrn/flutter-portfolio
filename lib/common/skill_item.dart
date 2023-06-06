import 'package:flutter/material.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/text_3d.dart';

class SkillItem extends StatefulWidget {
  final Color iconBackgroundColor;
  final String iconPath;
  final String title;
  final Color textLightSideColor;
  final double? fontSize;
  const SkillItem(
      {required this.iconBackgroundColor,
      required this.iconPath,
      required this.title,
      required this.textLightSideColor,
      this.fontSize,
      super.key});

  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _colorTween = ColorTween(
            begin: myBlue[400]!.withOpacity(0.5),
            end: myOrange[400]!.withOpacity(0.5))
        .animate(_animationController);
    super.initState();
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
      child: AnimatedBuilder(
          animation: _colorTween,
          builder: (context, child) {
            return Container(
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
                            _colorTween.value,
                            Colors.transparent,
                          ]),
                    ),
                    child: Image.asset(
                      widget.iconPath,
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Text3D(
                    text: widget.title,
                    fontSize: widget.fontSize,
                    textColor: myGrey[900],
                    darkSideColor: Colors.black,
                    lightSideColor: _colorTween.value,
                  )
                ],
              ),
            );
          }),
    );
  }
}
