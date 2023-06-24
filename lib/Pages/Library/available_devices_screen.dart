import 'package:flutter/material.dart';
import 'package:graduation_project/Pages/library/available_device_model.dart';
import 'package:graduation_project/Pages/library/available_devices_table_row.dart';
import 'package:graduation_project/core/app_colors.dart';

import 'package:graduation_project/provider/devices_provider.dart';

import 'package:provider/provider.dart';

class DevicesScreen extends StatefulWidget {
  const DevicesScreen({super.key});

  @override
  State<DevicesScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> {
  @override
  DateTime selectedDate = DateTime.now();

  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2101));
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }

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
