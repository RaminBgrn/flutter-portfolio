import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: myGrey[900],
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, 8),
                color: Colors.black.withOpacity(0.4),
                blurRadius: 20)
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 4,
            child: CircleAvatar(
              backgroundImage: const AssetImage('images/me.jpg'),
              radius: 150,
              backgroundColor: myOrange[400]!,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TitleWidget(title: "Ramin"),
                    SizedBox(width: 8),
                    TitleWidget(title: "Bagherian"),
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
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: 0.3,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Colors.transparent,
                          Colors.white,
                          Colors.transparent,
                        ])),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              'Download CV',
                              style: GoogleFonts.pontanoSans(
                                fontSize: 14,
                                color: myOrange[50],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 0.3,
                        height: 70,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              'Contact Me',
                              style: GoogleFonts.pontanoSans(
                                fontSize: 14,
                                color: myOrange[50],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))
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
            color: event ? myOrange[400] : Colors.white,
            width: 20,
          );
        });
  }
}
