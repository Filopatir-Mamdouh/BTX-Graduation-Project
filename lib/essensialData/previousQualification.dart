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
Container previousQualification = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("المؤهل ")),
            Expanded(
                child: Center(
                    child: Text("ثانوي عام -رياضة",
                        style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("الجهة ")),
            Expanded(
                child: Center(
                    child:
                        Text("مدرسة محرم بك", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("سنة التخرج ")),
            Expanded(
                child: Center(
                    child: Text("2019", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("المجموع ")),
            Expanded(
                child:
                    Center(child: Text("450", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("النسبة ")),
            Expanded(
                child: Center(
                    child: Text("100%", style: TextStyle(color: color1))))
          ],
        ),
      ),
    ],
  ),
);
