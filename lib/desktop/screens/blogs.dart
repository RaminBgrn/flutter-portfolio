import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/custom_devider.dart';
import 'package:web_testing/common/title_widget.dart';

class Blogs extends StatelessWidget {
  Blogs({super.key});

  final Uri _url = Uri.parse('https://flutter.dev');

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
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _launchUrl,
                    child: Text(
                      'Show Flutter homepage',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                // Expanded(
                //   child: AnyLinkPreview(
                //     link:
                //         "https://virgool.io/@ramin.bagheriian/multi-type-return-functions-record-%D8%AF%D8%B1-%D8%AF%D8%A7%D8%B1%D8%AA-3-drmuya6tqwro",
                //     displayDirection: UIDirection.uiDirectionVertical,
                //     bodyStyle: GoogleFonts.vazirmatn(),
                //     cache: Duration(hours: 1),
                //     previewHeight: 340,
                //     backgroundColor: Colors.grey[300],
                //     errorWidget: Container(
                //       color: Colors.grey[300],
                //       child: Text('Oops!'),
                //     ),
                //   ),
                // ),
              ],
            ),
            // AnyLinkPreview(
            //   link:
            //       "https://virgool.io/@ramin.bagheriian/multi-type-return-functions-record-%D8%AF%D8%B1-%D8%AF%D8%A7%D8%B1%D8%AA-3-drmuya6tqwro",
            //   displayDirection: UIDirection.uiDirectionHorizontal,
            //   showMultimedia: true,
            //   bodyMaxLines: 20,
            //   bodyTextOverflow: TextOverflow.ellipsis,
            //   titleStyle: TextStyle(
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 15,
            //   ),
            //   bodyStyle: TextStyle(color: Colors.grey, fontSize: 12),
            // ),
          ],
        ),
      )),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
