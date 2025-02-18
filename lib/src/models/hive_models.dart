import 'package:device_chat_data/src/models/remote_models.dart';
import 'package:hive/hive.dart';

part 'hive_models.g.dart';

@HiveType(typeId: 0)
class DeviceLocal extends HiveObject {

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String profilePictureUrl;

  @HiveField(2)
  final DateTime createdAt;

  DeviceLocal({
    required this.id,
    required this.profilePictureUrl,
    required this.createdAt,
  });


}

@HiveType(typeId: 1)
class ThreadLocal extends HiveObject {

  @HiveField(0)
  final String id;

  @HiveField(1)
  final List<String> participantDeviceIds;

  @HiveField(2)
  final DateTime createdAt;

  ThreadLocal({
    required this.id,
    required this.participantDeviceIds,
    required this.createdAt,
  });

}

@HiveType(typeId: 2)
class MessageLocal extends HiveObject {

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String sentBy;

  @HiveField(2)
  final String content;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  final DateTime updatedAt;

  @HiveField(5)
  final MediaType mediaType;

  MessageLocal({
    required this.id,
    required this.sentBy,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.mediaType,
  });
}

@HiveType(typeId: 3)
class LocalFileCache extends HiveObject {

  @HiveField(0)
  final String sha1;

  @HiveField(1)
  final String url;

  LocalFileCache({
    required this.sha1,
    required this.url,
  });
}

