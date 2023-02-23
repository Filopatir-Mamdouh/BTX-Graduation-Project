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
Container TableScaffold = Container(
  child: Column(
    children: [
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Center(
                  child: Text(
                    "المقرر الدراسي",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Center(
                  child: Table(
                    border: TableBorder.all(color: color1, width: 1),
                    children: [
                      TableRow(children: [
                        Center(child: Text("1")),
                        Center(child: Text("2")),
                        Center(child: Text("3")),
                        Center(child: Text("4")),
                        Center(child: Text("5")),
                        Center(child: Text("6")),
                        Center(child: Text("7")),
                        Center(child: Text("8")),
                        Center(child: Text("9")),
                        Center(child: Text("10")),
                      ])
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
                Container(
                  height: Checkbox.width + 10,
                  child: Center(
                      child: Text(
                    "الماده",
                    style: TextStyle(color: color1),
                  )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(color: color1, width: 1),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.remove_circle),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.cancel),
                        ),
                        Container(
                          width: Checkbox.width + 10,
                          height: Checkbox.width + 10,
                          child: Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
);
