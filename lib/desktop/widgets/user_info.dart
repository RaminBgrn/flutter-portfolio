import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';

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
          const Expanded(
              flex: 4,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/me.jpg'),
                radius: 150,
                backgroundColor: Colors.transparent,
              )),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'R',
                          style: GoogleFonts.archivoNarrow(
                              color: myOrange[300],
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "amin",
                              style: GoogleFonts.archivoNarrow(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'B',
                          style: GoogleFonts.archivoNarrow(
                              color: myOrange[300],
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "agherian",
                              style: GoogleFonts.archivoNarrow(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Web Developer',
                      speed: const Duration(milliseconds: 200),
                      cursor: " ",
                      curve: Curves.bounceIn,
                      textStyle: GoogleFonts.dongle(
                        fontSize: 24,
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
                        fontSize: 24,
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
                        fontSize: 24,
                        color: myOrange[50],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // ScaleAnimatedText('Mobile Developer'),
                    // ScaleAnimatedText('Flutter Developer'),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'svg/telegram.svg',
                        color: Colors.white,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'svg/instagram.svg',
                        color: Colors.white,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'svg/github.svg',
                        color: Colors.white,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'svg/stackoverflow.svg',
                        color: Colors.white,
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'svg/twitter.svg',
                        color: Colors.white,
                        width: 20,
                      ),
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
}
