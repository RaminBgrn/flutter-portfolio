import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/ramin-bagherian.jpg"),
          ),
        ),
        child: const Row(children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                  ),
                ),
                Text(
                  "I'm Ramin Bagherian",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          )
        ]),
      ),
    );
  }
}
