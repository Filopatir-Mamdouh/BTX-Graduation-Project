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
Container communicate = Container(
  child: SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("المدينة ")),
              Expanded(
                  child: Center(
                      child: Text("محرم بك - الأسكندرية ",
                          style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("العنوان ")),
              Expanded(
                  child: Center(
                      child: Text("محرم بك - الأسكندرية ",
                          style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" تليفون المنزل")),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" المحمول ")),
              Expanded(
                  child: Center(
                      child:
                          Text("01203497221", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" البريد الأكتروني ")),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" فاكس ")),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text(" رقم العقار ")),
              Expanded(
                  child: Center(
                      child:
                          Text("رقم الشقة", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("صندوق البريد ")),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(color: color1))))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("الكود البريدي ")),
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
  ),
);
