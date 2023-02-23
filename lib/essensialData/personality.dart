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
Container personality = Container(
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
              )),
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
              )),
            )
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
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Expanded(child: Text(" الديانة "))),
            Expanded(
              child: Center(
                  child: Text(
                "مسيحي",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" النوع ")),
            Expanded(
              child: Center(
                  child: Text(
                "ذكر",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" الجنسيه ")),
            Expanded(
              child: Center(
                  child: Text(
                "مصري",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" تاريخ الميلاد ")),
            Expanded(
              child: Center(
                  child: Text(
                "18/5/2001",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" محل الميلاد")),
            Expanded(
              child: Center(
                  child: Text(
                "الأسكندرية",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" الحالة الأجتماعية ")),
            Expanded(
              child: Center(
                  child: Text(
                "أعزب",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" نوع البطاقة ")),
            Expanded(
              child: Center(
                  child: Text(
                "بطاقة قومية",
                style: TextStyle(color: color1),
              )),
            )
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
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("رقم البطاقة ")),
            Expanded(
              child: Center(
                  child: Text(
                "12345678901234",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" تاريخ الصدور ")),
            Expanded(
              child: Center(
                  child: Text(
                "",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("مكان الصدور ")),
            Expanded(
              child: Center(
                  child: Text(
                "محرم بك - الأسكندرية",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text("اسم الأب ")),
            Expanded(
              child: Center(
                  child: Text(
                "ممدوح فيليب زكري",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" اسم الأم ")),
            Expanded(
              child: Center(
                  child: Text(
                "",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" حالة القيد ")),
            Expanded(
              child: Center(
                  child: Text(
                "مستجد تقدير",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" نوع القبول ")),
            Expanded(
              child: Center(
                  child: Text(
                "محول",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: [
            Expanded(child: Text(" عام القبول ")),
            Expanded(
              child: Center(
                  child: Text(
                "2020-2021",
                style: TextStyle(color: color1),
              )),
            )
          ],
        ),
      ),
    ],
  ),
);
