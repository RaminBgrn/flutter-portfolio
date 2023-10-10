import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';
import 'package:web_testing/common/title_widget.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const TitleWidget(
              title: 'مـقالات من',
              index: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomDevider(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  myGrey[100]!.withOpacity(0.5),
                  Colors.transparent,
                ],
                width: double.infinity,
                height: 1),
            const SizedBox(
              height: 20,
            ),
            blogItem(
                'Multi Type Return Functions (record) در دارت 3',
                "images/record.jpg",
                "توضیح متدهایی که قابلیت بازگشت چند دیتا تایپ متفاوت را دارند که د دارت 3 معرفی شد و تعریف رکورد ها در فلاتر",
                TextDirection.rtl,
                "https://virgool.io/@ramin.bagheriian/multi-type-return-functions-record-%D8%AF%D8%B1-%D8%AF%D8%A7%D8%B1%D8%AA-3-drmuya6tqwro"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: CustomDevider(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    myGrey[400]!,
                    Colors.transparent
                  ],
                  width: double.infinity,
                  height: 1),
            ),
            blogItem(
                'توضیحاتی کوتاه در مورد isolate و multi thread در فلاتر',
                "images/isolate.jpg",
                "استفاده از isolate و جلو گیری از وفقه یا freeze شدن اپ در هنگام انجام عملیات های سنگین",
                TextDirection.ltr,
                "https://virgool.io/flutter-community/%D8%AA%D9%88%D8%B6%DB%8C%D8%AD%D8%A7%D8%AA%DB%8C-%DA%A9%D9%88%D8%AA%D8%A7%D9%87-%D8%AF%D8%B1-%D9%85%D9%88%D8%B1%D8%AF-isolate-%D9%88-multi-thread-%D8%AF%D8%B1-%D9%81%D9%84%D8%A7%D8%AA%D8%B1-orrzxmyf6ykb"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: CustomDevider(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    myGrey[400]!,
                    Colors.transparent
                  ],
                  width: double.infinity,
                  height: 1),
            ),
            blogItem(
                'توضیحاتی در مورد microframework GetX در فلاتر',
                "images/getx.jpeg",
                "در این مقاله در مورد state management با استفاده از GetX در فلاتر صحبت کردیم و مثال های کوچیکی هم زدیم",
                TextDirection.rtl,
                "https://virgool.io/@ramin.bagheriian/%D8%AA%D9%88%D8%B6%DB%8C%D8%AD%D8%A7%D8%AA%DB%8C-%D8%AF%D8%B1-%D9%85%D9%88%D8%B1%D8%AF-microframework-getx-%D8%AF%D8%B1-%D9%81%D9%84%D8%A7%D8%AA%D8%B1-hzyezjywhzgx"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: CustomDevider(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    myGrey[400]!,
                    Colors.transparent
                  ],
                  width: double.infinity,
                  height: 1),
            ),
          ],
        ),
      )),
    );
  }

  Widget blogItem(
    String title,
    String image,
    String description,
    TextDirection rowTextDirection,
    String url,
  ) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(Uri.parse(url))) {
            throw Exception('Could not launch ');
          }
        },
        child: SizedBox(
          child: Row(
            textDirection: rowTextDirection,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.vazirmatn(
                        color: myGrey[300],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.vazirmatn(
                        fontSize: 12,
                        color: myGrey[500],
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
