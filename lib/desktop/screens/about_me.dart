import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';
import 'package:web_testing/common/skill_item.dart';
import 'package:web_testing/common/title_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TitleWidget(
                  title: "درباره من",
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
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          myInfo("29", "سن :"),
                          myInfo("ایران, ارومیه", "محل سکونت :"),
                          myInfo("به دنبال کار", "پوزیشن فعلی :"),
                          myInfo("فریلنسری و ریموت", "نوع فعالیت :"),
                          myInfo("فلاتر, اندروید و ووردپرس", "حرفه‌ها :"),
                          myInfo("جاوااسکریپت و Node JS", "در حال یادگیری :"),
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "سلام من رامین باقریان هستم.",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.vazirmatn(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: myGrey[300]),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, left: 12.0),
                            child: Text(
                              "برنامه نویس موبایل و وب از ایران آذربایجان غربی ارومیه, تجربایت ارزشمندی در زمینه توسعه اپلیکیشن‌های موبایل و توسعه وب به واسطه فلاتر دارم و مشتاقانه منتظر شما برای عملی کردن ایده‌هایتان هستم .",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.vazirmatn(
                                  fontSize: 14,
                                  height: 1.8,
                                  fontWeight: FontWeight.w400,
                                  color: myGrey[400]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const TitleWidget(title: "پـیشنهاد من", index: 1),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24.0),
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
                                colorFilter: const ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
                                width: 10,
                                height: 10,
                              ),
                            ),
                            Text(
                              'توسعه موبایل اپ',
                              style: GoogleFonts.vazirmatn(
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
                                  'قبل از توسعه اپ یک نمونه پیشنمایش از ایده خود تهیه کنید و از جامعه هدف خود بخواهید که نظر خود را در این باره بیان کنند.',
                                  textAlign: TextAlign.center,
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.vazirmatn(
                                      color: myGrey[400],
                                      fontSize: 14,
                                      height: 1.6,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomDevider(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.5),
                        Colors.transparent
                      ],
                      width: 1,
                      height: 300,
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24.0),
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
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                  width: 10,
                                  height: 10),
                            ),
                            Text(
                              'توسعه وبسایت',
                              style: GoogleFonts.vazirmatn(
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
                                  'برای شروع یک بیزینس کوچک بهترین کار استفاده از CMS (وردپرس) میباشد که هم صرفه اقتصادی دارد و هم دارای سرعت بالا در توسعه میباشد ',
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.vazirmatn(
                                      color: myGrey[400],
                                      fontSize: 14,
                                      height: 1.6,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const TitleWidget(
                  title: "مـهارت‌های من",
                  index: 1,
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
                      itemDecription:
                          "دارت زبان برنامه‌نویسی است که توسط گوگل توسعه داده می‌شود و برپایه کلاس، وراثت و شی گرایی است که گرامر آن شبیه زبان C می‌باشد",
                      iconBackgroundColor: myOrange[400]!,
                      iconPath: 'images/dart.png',
                      textLightSideColor: myOrange[400]!,
                    ),
                    SkillItem(
                      title: "FLUTTER",
                      itemDecription:
                          "فریموورک فلاتر توسط گوگل در سال 2017 رونمایی شد, و به توسعه دهندگان امکان گرفتن خروجی مخصوص اندروید, IOS, وب و دسکتاپ را میدهد.",
                      iconBackgroundColor: myBlue[400]!,
                      iconPath: 'images/flutter.png',
                      textLightSideColor: myBlue[400]!,
                    ),
                    SkillItem(
                      title: "WORDPRESS",
                      itemDecription:
                          "وردپرس یک سیستم مدیریت محتوای سایت ساز است که با استفاده از آن قادر خواهید بود تا به راه اندازی انواع گوناگونی از وبسایت و وبلاگ بپردازید.",
                      fontSize: 22,
                      iconBackgroundColor: myBlue[400]!,
                      iconPath: 'images/wordpress.png',
                      textLightSideColor: myBlue[400]!,
                    ),
                    SkillItem(
                      title: "JAVA",
                      itemDecription:
                          "زبان جاوا شبیه به ++C است؛ اما مدل شیءگرایی آسان‌تری دارد و از قابلیت‌های سطح پایین کمتری پشتیبانی می‌کند. ایدهٔ شیءگرایی جاوا از زبان اسمال‌تاک گرفته شده‌است.",
                      iconBackgroundColor: myBlue[400]!,
                      iconPath: 'images/java.png',
                      textLightSideColor: myBlue[400]!,
                    ),
                    SkillItem(
                      title: "JS",
                      itemDecription:
                          "یک زبان برنامه‌نویسی سطح بالا و پویا مبتنی بر شی است. از JS در کنار CSS و HTML به عنوان یکی از سه هسته تشکیل دهنده صفحات وب، یاد می‌شود.",
                      iconBackgroundColor: myBlue[400]!,
                      iconPath: 'images/js.png',
                      textLightSideColor: myBlue[400]!,
                    ),
                    SkillItem(
                      title: "GIT",
                      itemDecription:
                          "گیت یکی از محبوب‌ترین سیستم‌های کنترل ورژن توزیع‌شده و متن‌باز جهان است که توسط لینوس توروالدز خالق هسته سیستم‌عامل لینوکس، ایجاد شده.",
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
                textDirection: TextDirection.rtl,
                style: GoogleFonts.vazirmatn(
                    color: myOrange[100],
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
            Text(value,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.vazirmatn(
                    color: myGrey[400],
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.w500)),
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
