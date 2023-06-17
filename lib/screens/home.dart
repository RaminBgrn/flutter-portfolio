import 'package:flutter/material.dart';
import 'package:web_testing/desktop/screens/desktop.dart';
import 'package:web_testing/mobile/screens/mobile_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 720
        ? const MobileHome()
        : const Desktop();
  }
}
