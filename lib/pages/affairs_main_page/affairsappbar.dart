import 'package:flutter/material.dart';

class AffairsAppBar extends StatelessWidget {
  const AffairsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Row(children: [
        Material(
          // needed
          color: Colors.transparent,
          child: InkWell(
            onTap: () {}, // needed
            child: Image.asset(
              "logo3.png",
              width: 60,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}
