import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';
import 'package:web_testing/common/number_convertor.dart';

import 'package:web_testing/common/title_widget.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const TitleWidget(title: "رزومه من"),
            const SizedBox(
              height: 20,
            ),
            CustomDevider(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [myGrey[100]!.withOpacity(0.5), Colors.transparent],
                width: double.infinity,
                height: 1),
            const SizedBox(
              height: 20,
            ),
            eachItem(
              title: "جاوا اندروید",
              description:
                  'دوره آموزش اندروید اکسپرت ( آقای سعید شاهینی ) و داکیومنت اندروید',
              year: "وب سایت سون لرن",
              endChild: Align(
                alignment: Alignment.topCenter,
                child: titleWithIcon('تـخصوص', 'svg/expert.svg'),
              ),
            ),
            eachItem(
                title: "گیت (Git)",
                description:
                    'دوره مدیریت و کنترل ورژن پروژها ( آقای لقمان آوند )',
                year: "وب سایت سون لرن"),
            eachItem(
                title: "دارت",
                description:
                    'آموزش از طریق داکیومنت و کانال یوتیوب فلاتر و بیسنیور',
                year: "داکیومت و کانال یوتیوب"),
            eachItem(
                title: "فلاتر",
                description:
                    'آموزش از طریق داکیومنت و کانال یوتیوب فلاتر و بیسنیور',
                year: "داکیومت و کانال یوتیوب"),
            eachItem(
                title: "وردپرس",
                description:
                    'دوره آموزشی وبمستران هوشمند شیش ( آقای علی حاجی‌محمدی )',
                year: "سایت همیار وردپرس"),
            eachItem(
                title: "جاوااسکریپت",
                description: 'دوره آموزشی متخصص جاوااسکریپت ',
                year: "سایت سون لرن",
                isLast: true),
            Container(
              width: double.infinity,
              height: 1,
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    myGrey[400]!.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            eachItem(
              title: "کاردانی",
              description: 'برنامه ریزی شهری دانشگاه پیام نور ارومیه',
              year: "سال تحصیلی ${replaceFarsiNumber("93-1392")}",
              endChild: Align(
                  alignment: Alignment.topCenter,
                  child: titleWithIcon('تـحصیلات', 'svg/academic.svg')),
            ),
            eachItem(
              title: "ICDL",
              description: 'مدرک ICDL درجه دو از مرکز آموزشگاه فنی حرفه‌ای',
              year: "سال تحصیلی ${replaceFarsiNumber("94-1393")}",
              isLast: true,
            ),
            Container(
              width: double.infinity,
              height: 1,
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    myGrey[400]!.withOpacity(0.5),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            eachItem(
              title: "اینگلیسی",
              description: '',
              year: "",
              endChild: Align(
                alignment: Alignment.topCenter,
                child:
                    titleWithIcon('زبان گفتاری', 'svg/language.svg', index: 0),
              ),
            ),
            eachItem(
              title: "ترکی",
              description: '',
              year: "",
            ),
            eachItem(
              title: "فارسی",
              description: '',
              year: "",
              isLast: true,
            ),
          ],
        ),
      ),
    ));
  }

  Widget titleWithIcon(String title, String iconPath, {int index = 1}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleWidget(title: title, index: index, firstCharFontSize: 18),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                myOrange[500]!.withOpacity(0.5),
                Colors.transparent,
              ],
            ),
          ),
          child: SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
                myGrey[100]!.withOpacity(0.8), BlendMode.srcIn),
          ),
        ),
      ],
    );
  }

  Widget eachItem(
      {required String title,
      required String description,
      required String year,
      bool? isLast,
      Widget? endChild}) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      beforeLineStyle: LineStyle(thickness: 0, color: myOrange[500]!),
      isFirst: false,
      isLast: isLast ?? false,
      lineXY: 0.75,
      indicatorStyle: IndicatorStyle(
        drawGap: false,
        width: 15,
        indicatorXY: 0,
        color: myOrange[500]!,
      ),
      endChild: endChild ?? const SizedBox(),
      startChild: Padding(
        padding: const EdgeInsets.only(right: 18.0, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: GoogleFonts.vazirmatn(
                  fontSize: 18,
                  color: myGrey[200]!,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            description.isNotEmpty
                ? Text(
                    description,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.vazirmatn(
                        fontSize: 14,
                        color: myGrey[300]!,
                        fontWeight: FontWeight.w400),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 4,
            ),
            year.isNotEmpty
                ? Text(
                    year,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.vazirmatn(
                        fontSize: 12,
                        color: myGrey[500]!,
                        fontWeight: FontWeight.w400),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
