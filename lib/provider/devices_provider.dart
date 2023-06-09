import 'package:flutter/material.dart';

import '../pages/library/available_device_model.dart';

class DevicesProvider with ChangeNotifier {
  List<AvailableDeviceModel> devices = List.generate(
    3,
    (index) => const AvailableDeviceModel(
      "اسم الجهاز",
      "المكان",
      "ملاحظات",
    ),
  );
}
