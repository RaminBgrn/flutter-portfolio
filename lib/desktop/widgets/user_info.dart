import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/my_animated_text.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/on_hover.dart';
import 'package:web_testing/common/title_widget.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 300,
      constraints: const BoxConstraints(
        minHeight: 300,
        maxHeight: 650,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: myGrey[900],
          boxShadow: [BoxShadow(offset: const Offset(5, 8), color: Colors.black.withOpacity(0.4), blurRadius: 20)]),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                'images/me.jpg',
              ),
              radius: 150,
              backgroundColor: myOrange[400]!,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleWidget(
                    title: "Ramin",
                  ),
                  SizedBox(width: 8),
                  TitleWidget(
                    title: "Bagherian",
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const MyAnimatedText(),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    socialMedia('svg/telegram.svg', () {}),
                    socialMedia('svg/instagram.svg', () {}),
                    socialMedia('svg/github.svg', () {}),
                    socialMedia('svg/stackoverflow.svg', () {}),
                    socialMedia('svg/twitter.svg', () {}),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          // Container(
          //   height: 0.3,
          //   decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.centerLeft,
          //       end: Alignment.centerRight,
          //       colors: [
          //         Colors.transparent,
          //         Colors.white,
          //         Colors.transparent,
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Center(
                      child: OnHover(
                        onClick: () {},
                        builder: (isHover) {
                          return Text(
                            'Download CV',
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: isHover ? myOrange[300] : myOrange[50],
                              fontWeight: FontWeight.w500,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: OnHover(
                      onClick: () {},
                      builder: (isHover) {
                        return Container(
                          width: double.infinity,
                          height: 70,
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: myOrange[400]!,
                            ),
                          ),
                          child: Text(
                            "Contact Me",
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: isHover ? myOrange[300] : myOrange[50],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget socialMedia(String iconPath, VoidCallback onClick) {
    return OnHover(
        onClick: onClick,
        builder: (event) {
          return SvgPicture.asset(
            iconPath,
            width: 26,
            colorFilter: event
                ? ColorFilter.mode(myOrange[400]!, BlendMode.srcIn)
                : const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          );
        });
  }
}
