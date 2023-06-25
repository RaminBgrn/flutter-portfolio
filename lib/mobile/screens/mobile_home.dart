import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/my_animated_text.dart';
import 'package:web_testing/common/title_widget.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  late AdvancedDrawerController _drawerController;
  bool _isDrawerOpen = false;
  @override
  void initState() {
    _drawerController = AdvancedDrawerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_isDrawerOpen) {
          _isDrawerOpen = false;
          _drawerController.hideDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: SafeArea(
        child: AdvancedDrawer(
          controller: _drawerController,
          backdrop: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
              ),
            ),
          ),
          drawer: Container(
            width: 20,
            height: 20,
            color: Colors.red,
          ),
          rtlOpening: true,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  myGrey[600]!,
                  myGrey[700]!,
                  myGrey[800]!,
                  myGrey[900]!
                ],
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                  preferredSize: const Size(double.infinity, 100),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  TitleWidget(
                                    title: "Ramin",
                                    firstCharStyle: GoogleFonts.archivoNarrow(
                                      color: myOrange[300],
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    style: GoogleFonts.archivoNarrow(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TitleWidget(
                                    title: "Bagherian",
                                    firstCharStyle: GoogleFonts.archivoNarrow(
                                      color: myOrange[300],
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    style: GoogleFonts.archivoNarrow(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const MyAnimatedText(
                                textSize: 28,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              _drawerController.showDrawer();
                              _isDrawerOpen = true;
                            },
                            child: SvgPicture.asset(
                              'svg/menu.svg',
                              width: 30,
                              height: 30,
                              colorFilter: const ColorFilter.mode(
                                  Colors.white, BlendMode.srcIn),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              body: Center(
                child: Text('home'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
