import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/library/available_device_model.dart';
import 'package:graduation_project/core/app_colors.dart';

TableRow devicesTableRow({
  bool isFirstRow = false,
  AvailableDeviceModel? availableDevice,
}) =>
    TableRow(
      children: [
        Text(
          isFirstRow == true ? "اسم الجهاز" : availableDevice!.deviceName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          isFirstRow == true ? "المكان" : availableDevice!.location,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          isFirstRow == true ? "ملاحظات" : availableDevice!.notes,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.grey,
            fontWeight:
                isFirstRow == true ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        isFirstRow == true
            ? Text(
                "حجز جهاز",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Builder(builder: (context) {
                final String title;

                return InkWell(
                  onTap: () => showDialog<StatefulBuilder>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: AppBar(
                        leading: Row(
                          children: [
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "تاكيد الحجز",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),

                        toolbarHeight: 20,
                        backgroundColor: AppColors.grey, // Will work
                      ),
                      content: Container(
                        height: 80,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "حجز جهاز",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  isFirstRow == true
                                      ? "اسم الجهاز"
                                      : availableDevice!.deviceName,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "الموجود ب",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  isFirstRow == true
                                      ? "المكان"
                                      : availableDevice!.location,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "يوم/شهر",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 86,
                                ),
                                Text(
                                  "الساعة",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 13,
                                ),
                                Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: 80,
                                      height: 23,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        width: 0.5,
                                        color: AppColors.grey,
                                      )),
                                      child: TextButton(
                                        onPressed: () {
                                          showDatePicker(
                                              context: context,
                                              initialDate: selectedDate,
                                              firstDate: DateTime(2015, 8),
                                              lastDate: DateTime(2101));
                                        },
                                        child: Text(
                                          "اختر التاريخ",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Builder(builder: (BuildContext context) {
                                  return Container(
                                    width: 80,
                                    height: 23,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      width: 0.5,
                                      color: AppColors.grey,
                                    )),
                                    child: TextButton(
                                      onPressed: () {
                                        showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.now());
                                      },
                                      child: Text(
                                        "اختر الوقت",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        Center(
                          child: Container(
                            child: ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('تاكيد'),
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                    width: 2, color: Colors.black),
                                primary: AppColors.grey,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: Text(
                    "حجز",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              }),
      ],
    );
DateTime selectedDate = DateTime.now();
Future<void> _selectDate(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101));
  if (picked != null && picked != selectedDate) {
    setState(() {
      selectedDate = picked;
    });
  }
}

Future<void> displayTimeDialog(BuildContext context) async {
  final TimeOfDay? time =
      await showTimePicker(context: context, initialTime: TimeOfDay.now());
  if (time != null) {
    setState(() {
      var selectedTime = time.format(context);
    });
  }
}

void setState(Null Function() param0) {}
