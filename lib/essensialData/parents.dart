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
Container parents = Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("الأسم ")),
            Expanded(
                child: Center(
                    child: Text("ممدوح فليب ذكري",
                        style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("الجنسية")),
            Expanded(
                child: Center(
                    child: Text("مصري", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("المدينة")),
            Expanded(
                child: Center(
                    child: Text("محرم بك-الأسكندرية",
                        style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("العنوان")),
            Expanded(
                child: Center(
                    child: Text("محرم بك-الأسكندرية",
                        style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("الوظيفة")),
            Expanded(
                child: Center(child: Text("", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("حهة العمل")),
            Expanded(
                child: Center(child: Text("", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("درجة القرابة")),
            Expanded(
                child:
                    Center(child: Text("أب", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("تليفون العمل")),
            Expanded(
                child: Center(child: Text("", style: TextStyle(color: color1))))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("المحمول")),
            Expanded(
                child: Center(
                    child: Text(
              "",
              style: TextStyle(color: color1),
            )))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("البريد الألكتروني")),
            Expanded(
                child: Center(
                    child: Text(
              "",
              style: TextStyle(color: color1),
            )))
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("فاكس")),
            Expanded(
                child: Center(
                    child: Text(
              "",
              style: TextStyle(color: color1),
            )))
          ],
        ),
      ),
    ],
  ),
);
