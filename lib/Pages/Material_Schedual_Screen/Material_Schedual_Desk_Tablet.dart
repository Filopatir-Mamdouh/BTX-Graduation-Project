import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Provider/material_Schedule_provider.dart';
import 'package:graduation_project/core/app_colors.dart';
import 'package:provider/provider.dart';

import 'hours_widget.dart';

class MaterialTable_Desk_tab extends StatelessWidget {
  const MaterialTable_Desk_tab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double sw = MediaQuery.of(context).size.width;
    TextStyle dataTextStyle =
        theme.textTheme.bodyText2!.copyWith(color: AppColors.grey);
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.centerRight,
                  //width: sw,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // !heading

                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            //borderRadius: BorderRadius.circular(8),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                HoursWidget(hours: "اليوم"),
                                HoursWidget(hours: "8-9"),
                                HoursWidget(hours: "9-10"),
                                HoursWidget(hours: "10-11"),
                                HoursWidget(hours: "11-12"),
                                HoursWidget(hours: "12-1"),
                                HoursWidget(hours: "1-2"),
                                HoursWidget(hours: "2-3"),
                                HoursWidget(hours: "3-4"),
                                HoursWidget(hours: "4-5"),
                                HoursWidget(hours: "5-6"),
                                HoursWidget(hours: "6-7"),
                              ],
                            ),
                          ),
                        ),
                        ChangeNotifierProvider<MaterialsTableProvider>(
                          create: (context) => MaterialsTableProvider(),
                          child: Container(
                            width: sw * 0.6,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 10, color: const Color(0xff3E6BA9))),
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
                                                    width: sw > 400
                                                        ? sw * (0.042)
                                                        : sw * (0.06),
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      element["day"],
                                                      style: dataTextStyle,
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  VerticalDivider(
                                                    color: AppColors.grey,
                                                    thickness: 1,
                                                    width: 0,
                                                  ),
                                                  for (var lecdata
                                                      in element['lecs'])
                                                    IntrinsicHeight(
                                                      child: Row(
                                                        //mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: sw > 300
                                                                ? sw *
                                                                    (int.parse(lecdata[
                                                                            "hours"]) *
                                                                        0.05)
                                                                : sw *
                                                                    (int.parse(lecdata[
                                                                            "hours"]) *
                                                                        0.05),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "${lecdata["material"]} - ${lecdata["place"]} - ${lecdata["lecturer"]} - ${lecdata["depratment"]} - ${lecdata["year"]}",
                                                              style:
                                                                  dataTextStyle,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                          VerticalDivider(
                                                            color:
                                                                AppColors.grey,
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
                                              width: sw > 300
                                                  ? sw * 1.1
                                                  : sw * 1.1,
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
      ),
    );
  }
}
