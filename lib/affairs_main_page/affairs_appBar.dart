import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Affairs_AppBar extends StatelessWidget {
  const Affairs_AppBar({Key? key}) : super(key: key);

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
        SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}
