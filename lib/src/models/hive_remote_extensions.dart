import 'package:device_chat_data/src/models/hive_models.dart';
import 'package:device_chat_data/src/models/remote_models.dart';

///Device
extension DeviceLocalX on DeviceRemote {
  DeviceLocal get toLocalDevice {
    return DeviceLocal(
      id: id,
      profilePictureUrl: profilePictureUrl,
      createdAt: createdAt,
    );
  }
}

extension DeviceRemoteX on DeviceLocal {
  DeviceRemote get toRemoteDevice {
    return DeviceRemote(
      id: id,
      profilePictureUrl: profilePictureUrl,
      createdAt: createdAt,
    );
  }
}

///Thread
extension ThreadLocalX on ThreadRemote {
  ThreadLocal get toLocalThread {
    return ThreadLocal(
      id: id,
      participantDeviceIds: participantDeviceIds,
      createdAt: createdAt,
    );
  }
}

extension ThreadRemoteX on ThreadLocal {
  ThreadRemote get toRemoteThread {
    return ThreadRemote(
      id: id,
      participantDeviceIds: participantDeviceIds,
      createdAt: createdAt,
    );
  }
}

///Messages
extension MessageLocalX on MessageRemote {
  MessageLocal get toLocalMessage {
    return MessageLocal(
      id: id,
      sentBy: sentBy,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      mediaType: mediaType,
    );
  }
}

extension MessageRemoteX on MessageLocal {
  MessageRemote get toRemoteMessage {
    return MessageRemote(
      id: id,
      sentBy: sentBy,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
      mediaType: mediaType,
    );
  }
}