import 'package:device_chat_data/src/models/data_models.dart';
import 'package:device_chat_data/src/models/hive_models.dart';

abstract class DeviceRepository {
  Future<Result<DeviceLocal>> getDevice();

  Future<Result<DeviceLocal>> setDevice(String deviceId);

  Future<Result<DeviceLocal>> setDeviceProfilePhoto(String deviceId);
}
