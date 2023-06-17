import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 52),
            child: Row(
              children: [Text("Ramin Bagherian")],
            )),
        body: Center(
          child: Text('home'),
        ),
      ),
    );
  }
}
