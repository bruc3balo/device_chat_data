import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_models.freezed.dart';
part 'remote_models.g.dart';

@freezed
class DeviceRemote with _$DeviceRemote {

  const factory DeviceRemote({
    required String id,
    required String profilePictureUrl,
    required DateTime createdAt,
  }) = _CreateDeviceRemote;

  factory DeviceRemote.fromJson(Map<String, dynamic> json) => _$DeviceRemoteFromJson(json);
}

@freezed
class ThreadRemote with _$ThreadRemote {

  const factory ThreadRemote({
    required String id,
    required List<String> participantDeviceIds,
    required DateTime createdAt,
  }) = _CreateThreadRemote;

  factory ThreadRemote.fromJson(Map<String, dynamic> json) => _$ThreadRemoteFromJson(json);

}

@freezed
class MessageRemote with _$MessageRemote {
  const factory MessageRemote({
    required String id,
    required String sentBy,
    required String content,
    required DateTime createdAt,
    required DateTime updatedAt,
    required MediaType mediaType,
  }) =_CreateMessageRemote;

  factory MessageRemote.fromJson(Map<String, dynamic> json) => _$MessageRemoteFromJson(json);
}

enum MediaType { text, image }