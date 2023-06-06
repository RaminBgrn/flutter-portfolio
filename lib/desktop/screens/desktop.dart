import 'dart:ui';

import 'package:fadingpageview/fadingpageview.dart';
import 'package:flutter/material.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/desktop/screens/about_me.dart';
import 'package:web_testing/desktop/widgets/main_menu.dart';
import 'package:web_testing/desktop/widgets/user_info.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(myGrey[900]!, BlendMode.dstATop),
                  image: const AssetImage('images/background.jpg'),
                ),
              ),
              child: BackdropFilter(
                  child: SizedBox(),
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  )),
            ),
            Row(
              textDirection: TextDirection.rtl,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: myGrey[900],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(
                        16,
                      ),
                    ),
                  ),
                  child: FadingPageView(
                    itemBuilder: (context, index) {
                      return const AboutMe();
                    },
                    controller: FadingPageViewController(),
                  ),
                ),
                const UserInfo(),
                const MainMenu(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
