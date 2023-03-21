import 'package:bt_x/core/app_colors.dart';
import 'package:flutter/material.dart';

class MaterialsScheduleProvider with ChangeNotifier {
  List<TableRow> tableRows = [
    TableRow(
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      children: const [
        Text(
          "اليوم",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text(
          "9-10 8-9",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text(
          "11-12  10-11",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text(
          "2-3  1-2 12-1",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        Text(
          "4-5  3-4",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    ),
    TableRow(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30.0),
          child: RotatedBox(
            quarterTurns: 1,
            child: Center(
              child: Text(
                "السبت",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      "المادة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القاعة - إسم الدكتور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القسم - الفرقة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      "المادة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القاعة - إسم الدكتور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القسم - الفرقة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      "المادة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القاعة - إسم الدكتور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القسم - الفرقة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      "المادة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القاعة - إسم الدكتور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القسم - الفرقة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      "المادة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القاعة - إسم الدكتور",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      "القسم - الفرقة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  ];
}
