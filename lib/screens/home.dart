import 'package:flutter/material.dart';
import 'package:web_testing/desktop/screens/desktop.dart';
import 'package:web_testing/mobile/screens/mobile_home.dart';
import 'package:web_testing/tablet/screens/tablet_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 672) return const MobileHome();
    if (MediaQuery.of(context).size.width <= 990 &&
        MediaQuery.of(context).size.width >= 673) return const TabletHome();
    return const Desktop();
  }
}
