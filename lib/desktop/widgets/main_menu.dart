import 'package:fadingpageview/fadingpageview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/on_hover.dart';

class MainMenu extends StatelessWidget {
  final PageController controller;

  const MainMenu({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: myGrey[900],
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        child: OnHover(
            onClick: () {},
            builder: (isHover) {
              return SvgPicture.asset(
                'svg/menu.svg',
                width: 32,
                height: 32,
                color: isHover ? myOrange[400] : Colors.white,
              );
            }),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: myGrey[900],
        ),
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(onClick: () {
                controller.animateToPage(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/about_me.svg',
                  width: 32,
                  height: 32,
                  color: isHover ? myOrange[400] : Colors.white,
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(onClick: () {
                controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/resume.svg',
                  width: 32,
                  height: 32,
                  color: isHover ? myOrange[400] : Colors.white,
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(
                  onClick: () {},
                  builder: (isHover) {
                    return SvgPicture.asset(
                      'svg/work.svg',
                      width: 32,
                      height: 32,
                      color: isHover ? myOrange[400] : Colors.white,
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(
                  onClick: () {},
                  builder: (isHover) {
                    return SvgPicture.asset(
                      'svg/blog.svg',
                      width: 32,
                      height: 32,
                      color: isHover ? myOrange[400] : Colors.white,
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(
                  onClick: () {},
                  builder: (isHover) {
                    return SvgPicture.asset(
                      'svg/contact.svg',
                      width: 32,
                      height: 32,
                      color: isHover ? myOrange[400] : Colors.white,
                    );
                  }),
            ),
          ],
        ),
      )
    ]);
  }
}
