import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/on_hover.dart';

class MainMenu extends StatefulWidget {
  final PageController controller;

  const MainMenu({required this.controller, super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      // Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(14),
      //     color: myGrey[900],
      //   ),
      //   margin: const EdgeInsets.all(8),
      //   padding: const EdgeInsets.all(12),
      //   child: OnHover(
      //       onClick: () {},
      //       builder: (isHover) {
      //         return SvgPicture.asset(
      //           'svg/menu.svg',
      //           width: 32,
      //           height: 32,
      //           colorFilter: isHover
      //               ? ColorFilter.mode(myOrange[400]!, BlendMode.dstIn)
      //               : const ColorFilter.mode(Colors.white, BlendMode.dstIn),
      //         );
      //       }),
      // ),
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
                widget.controller.animateToPage(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
                setState(() => _currentIndex = 0);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/about_me.svg',
                  width: 32,
                  height: 32,
                  colorFilter: isHover || _currentIndex == 0
                      ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(onClick: () {
                widget.controller.animateToPage(1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
                setState(() => _currentIndex = 1);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/resume.svg',
                  width: 32,
                  height: 32,
                  colorFilter: isHover || _currentIndex == 1
                      ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(onClick: () {
                widget.controller.animateToPage(2,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
                setState(() => _currentIndex = 2);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/work.svg',
                  width: 32,
                  height: 32,
                  colorFilter: isHover || _currentIndex == 2
                      ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: OnHover(onClick: () {
                widget.controller.animateToPage(3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine);
                setState(() => _currentIndex = 3);
              }, builder: (isHover) {
                return SvgPicture.asset(
                  'svg/blog.svg',
                  width: 32,
                  height: 32,
                  colorFilter: isHover || _currentIndex == 3
                      ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
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
                      colorFilter: isHover
                          ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                    );
                  }),
            ),
          ],
        ),
      )
    ]);
  }
}
