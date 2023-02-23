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
Container degreeScaffold = Container(
  child: SafeArea(
    child: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "المقرر الدراسي",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                  child: Center(
                      child: Text("الدرجه",
                          style: TextStyle(color: Colors.black))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Expanded(
                      child: Center(
                          child: Text("الماده",
                              style: TextStyle(color: color1))))),
              Expanded(
                  child: Center(
                      child: Text("30", style: TextStyle(color: color1))))
            ],
          ),
        ),
      ],
    ),
  ),
);
