import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';
import 'package:web_testing/common/skill_item.dart';
import 'package:web_testing/common/text_3d.dart';
import 'package:web_testing/common/title_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleWidget(
                title: "About Me",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomDevider(
                width: double.infinity,
                height: 1,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.transparent,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hello I'm Ramin Bagherian.",
                          style: GoogleFonts.sourceSansPro(
                              color: myGrey[300],
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                            "Moble App and Web Developer from Iran, Urmia. I have rich experience in web site programming and also mobile application developing, I love to talk with you about our unique. ",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.sourceSansPro(
                                color: myGrey[400],
                                fontSize: 16,
                                height: 1.4,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  CustomDevider(
                    width: 1,
                    height: 270,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        myInfo("Age : ", "28"),
                        myInfo("Residence : ", "Iran"),
                        myInfo("Freelance : ", "Available"),
                        myInfo("Address : ", "West-Azerbaijan, Urmia"),
                      ],
                    ),
                  ),
                ],
              ),
              const TitleWidget(title: "My Services"),
              CustomDevider(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.transparent,
                ],
                width: double.infinity,
                height: 1,
                margin: const EdgeInsets.only(top: 20),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(bottom: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    myOrange[400]!.withOpacity(0.2),
                                    Colors.transparent,
                                  ])),
                          child: SvgPicture.asset(
                            'svg/mobile.svg',
                            color: Colors.white,
                            width: 10,
                            height: 10,
                          ),
                        ),
                        Text(
                          'Mobile Developing',
                          style: GoogleFonts.sourceSansPro(
                              color: myGrey[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 8,
                          ),
                          child: Text(
                              'Create an animated app prototype and ask people to test it and provide feedback.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.sourceSansPro(
                                  color: myGrey[400],
                                  fontSize: 16,
                                  height: 1.6,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  ),
                  CustomDevider(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white.withOpacity(0.5), Colors.transparent],
                    width: 1,
                    height: 300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(bottom: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    myOrange[400]!.withOpacity(0.2),
                                    Colors.transparent,
                                  ])),
                          child: SvgPicture.asset('svg/web.svg',
                              color: Colors.white, width: 10, height: 10),
                        ),
                        Text(
                          'Web Design',
                          style: GoogleFonts.sourceSansPro(
                              color: myGrey[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 8,
                          ),
                          child: Text(
                              'Web designers craft the overall vision and plan for a website layout, color, font set.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.sourceSansPro(
                                  color: myGrey[400],
                                  fontSize: 16,
                                  height: 1.6,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleWidget(
                title: "Skills",
              ),
              CustomDevider(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 20),
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.transparent,
                ],
                width: double.infinity,
                height: 1,
              ),
              const SizedBox(height: 20),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  SkillItem(
                    title: "DART",
                    iconBackgroundColor: myOrange[400]!,
                    iconPath: 'images/dart.png',
                    textLightSideColor: myOrange[400]!,
                  ),
                  SkillItem(
                    title: "FLUTTER",
                    iconBackgroundColor: myBlue[400]!,
                    iconPath: 'images/flutter.png',
                    textLightSideColor: myBlue[400]!,
                  ),
                  SkillItem(
                    title: "WORDPRESS",
                    fontSize: 22,
                    iconBackgroundColor: myBlue[400]!,
                    iconPath: 'images/wordpress.png',
                    textLightSideColor: myBlue[400]!,
                  ),
                  SkillItem(
                    title: "JAVA",
                    iconBackgroundColor: myBlue[400]!,
                    iconPath: 'images/java.png',
                    textLightSideColor: myBlue[400]!,
                  ),
                  SkillItem(
                    title: "JS",
                    iconBackgroundColor: myBlue[400]!,
                    iconPath: 'images/js.png',
                    textLightSideColor: myBlue[400]!,
                  ),
                  SkillItem(
                    title: "GIT",
                    iconBackgroundColor: myBlue[400]!,
                    iconPath: 'images/git.png',
                    textLightSideColor: myBlue[400]!,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget myInfo(String title, String value) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: GoogleFonts.sourceSansPro(
                    color: myOrange[100],
                    fontSize: 18,
                    height: 1.6,
                    fontWeight: FontWeight.w400)),
            Text(value,
                style: GoogleFonts.sourceSansPro(
                    color: myGrey[400],
                    fontSize: 18,
                    height: 1.6,
                    fontWeight: FontWeight.w400)),
          ],
        ),
        CustomDevider(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 8),
          colors: [
            Colors.transparent,
            Colors.white.withOpacity(0.2),
            Colors.transparent,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ],
    );
  }
}
