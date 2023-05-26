import 'package:equatable/equatable.dart';

class AvailableDeviceModel extends AvailableDevice {
  const AvailableDeviceModel(
    super.deviceName,
    super.location,
    super.notes,
  );
}

class AvailableDevice extends Equatable {
  final String deviceName;
  final String location;
  final String notes;

  const AvailableDevice(
    this.deviceName,
    this.location,
    this.notes,
  );

  @override
  List<Object?> get props => [
        deviceName,
        location,
        notes,
      ];
}
