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
            : InkWell(
                onTap: () {},
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
              ),
      ],
    );
