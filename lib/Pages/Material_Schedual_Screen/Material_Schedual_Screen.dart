import 'dart:math';

import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/Material_Schedual_Screen/hours_widget_mobille.dart';
import 'package:graduation_project/Provider/material_Schedule_provider.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:provider/provider.dart';

import 'hours_widget.dart';

class MaterialTable extends StatelessWidget {
  const MaterialTable({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double sw = MediaQuery.of(context).size.width;
    TextStyle dataTextStyle =
        theme.textTheme.bodyText2!.copyWith(color: AppColors.grey);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "جدول المواد",
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 25,
                  bottom: 15,
                ),
                child: Container(
                  alignment: Alignment.centerRight,
                  //width: sw,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 10, color: const Color(0xff3E6BA9))),
                  child: Column(
                    children: [
                      // !heading

                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          //borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            HoursWidget2(hours: "اليوم"),
                            HoursWidget2(hours: "8-9"),
                            HoursWidget2(hours: "9-10"),
                            HoursWidget2(hours: "10-11"),
                            HoursWidget2(hours: "11-12"),
                            HoursWidget2(hours: "12-1"),
                            HoursWidget2(hours: "1-2"),
                            HoursWidget2(hours: "2-3"),
                            HoursWidget2(hours: "3-4"),
                            HoursWidget2(hours: "4-5"),
                            HoursWidget2(hours: "5-6"),
                          ],
                        ),
                      ),
                      ChangeNotifierProvider<MaterialsTableProvider>(
                        create: (context) => MaterialsTableProvider(),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: MaterialsTableProvider()
                                .listOfPetrol
                                .map(
                                  ((element) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  width: sw * (0.2),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    element["day"],
                                                    style: dataTextStyle,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                VerticalDivider(
                                                  color: AppColors.grey,
                                                  thickness: 0.5,
                                                  width: 0,
                                                ),
                                                for (var lecdata
                                                    in element['lecs'])
                                                  IntrinsicHeight(
                                                    child: Row(
                                                      //mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: sw *
                                                              (int.parse(lecdata[
                                                                      "hours"]) *
                                                                  0.2),
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            "${lecdata["material"]} - ${lecdata["place"]} - ${lecdata["lecturer"]} - ${lecdata["depratment"]} - ${lecdata["year"]}",
                                                            style:
                                                                dataTextStyle,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          color: AppColors.grey,
                                                          thickness: 1,
                                                          width: 0,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: sw * 2.2,
                                            color: AppColors.grey,
                                            height: 1,
                                          )
                                        ],
                                      )),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
