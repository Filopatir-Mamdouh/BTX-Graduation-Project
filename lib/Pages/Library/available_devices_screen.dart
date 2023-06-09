import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/library/available_devices_table_row.dart';
import 'package:graduation_project/core/app_colors.dart';

import 'package:graduation_project/provider/devices_provider.dart';

import 'package:provider/provider.dart';

import 'available_device_model.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List devices = DevicesProvider().devices;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DevicesProvider>(
          create: (_) => DevicesProvider(),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "الأجهزة المتاحة",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      devicesTableRow(
                        isFirstRow: true,
                      ),
                      ...List.generate(
                        devices.length,
                        (index) => devicesTableRow(
                          availableDevice: devices[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
