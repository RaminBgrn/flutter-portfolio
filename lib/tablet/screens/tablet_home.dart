import 'package:flutter/material.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.blue,
          ),
        )
      ]),
    );
  }
}
