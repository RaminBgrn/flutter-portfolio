import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_testing/common/colors.dart';

import 'package:web_testing/screens/home.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ramin Bagherian',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: TextTheme(
            displayLarge: GoogleFonts.vazirmatn(
                color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
            displayMedium: GoogleFonts.vazirmatn(
                color: myGrey[300], fontSize: 18, fontWeight: FontWeight.w600),
            displaySmall: GoogleFonts.vazirmatn(
                color: myGrey[400],
                fontSize: 16,
                height: 1.4,
                fontWeight: FontWeight.w400),
            headlineLarge: GoogleFonts.vazirmatn(
              color: myGrey[200],
              fontSize: 24,
            ),
            headlineMedium: GoogleFonts.vazirmatn(
              fontSize: 20,
              color: myGrey[300],
            ),
          ),
          useMaterial3: true,
        ),
        home: const Home());
  }
}
