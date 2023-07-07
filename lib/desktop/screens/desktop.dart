import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/desktop/screens/about_me.dart';
import 'package:web_testing/desktop/screens/blogs.dart';
import 'package:web_testing/desktop/screens/resume.dart';
import 'package:web_testing/desktop/widgets/main_menu.dart';
import 'package:web_testing/desktop/widgets/user_info.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: const SizedBox()),
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
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      scrollDirection: Axis.vertical,
                      children: [AboutMe(), Resume(), SizedBox(), Blogs()],
                    ),
                  ),
                  const UserInfo(),
                  MainMenu(controller: pageController),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
