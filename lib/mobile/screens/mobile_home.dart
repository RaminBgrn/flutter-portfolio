import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';
import 'package:web_testing/common/my_animated_text.dart';
import 'package:web_testing/common/title_widget.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  Widget homeHeaderWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [myGrey[600]!, myGrey[800]!, myGrey[900]!],
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "svg/menu.svg",
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: myOrange[700],
            backgroundImage: const AssetImage('images/me.jpg'),
            maxRadius: 50,
            minRadius: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleWidget(
                title: 'Ramin',
                firstCharStyle: GoogleFonts.archivoNarrow(
                  color: myOrange[400],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                style: GoogleFonts.archivoNarrow(
                  color: myGrey[100],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              TitleWidget(
                title: 'Bagherian',
                firstCharStyle: GoogleFonts.archivoNarrow(
                  color: myOrange[400],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                style: GoogleFonts.archivoNarrow(
                  color: myGrey[100],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const MyAnimatedText(
            textSize: 22,
          )
        ],
      ),
    );
  }
}
