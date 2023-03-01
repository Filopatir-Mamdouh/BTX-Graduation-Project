import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

final Color color1 = HexColor('#3E6BA9');

Container StudentScaffold = Container(
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("الاسم ")),
              Expanded(
                child: Center(
                  child: Text(
                    "بافلي بدري",
                    style: TextStyle(color: color1),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" الاسم باللغه الانجليزيه ")),
              Expanded(
                  child: Center(
                child: Text(
                  "bavlu badry",
                  style: TextStyle(color: color1),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("كود الطالب ")),
              Expanded(
                  child: Center(
                child: Text(
                  "201902047",
                  style: TextStyle(color: color1),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("القسم ")),
              Expanded(
                  child: Center(
                child: Text(
                  "تكنولوجيا المعلومات",
                  style: TextStyle(color: color1),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("الشعبه ")),
              Expanded(
                  child: Center(
                child: Text(
                  "s/w development",
                  style: TextStyle(color: color1),
                ),
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("الايميل الجامعي ")),
              Expanded(
                  child: Center(
                child: Text(
                  "bavlybadry32@cn.ccn.c.om",
                  style: TextStyle(color: color1),
                ),
              ))
            ],
          ),
        ),
      ],
    ),
  ),
);
