import 'package:device_chat_data/src/models/data_models.dart';
import 'package:device_chat_data/src/models/hive_models.dart';
import 'package:device_chat_data/src/models/hive_remote_extensions.dart';
import 'package:device_chat_data/src/models/remote_models.dart';
import 'package:hive/hive.dart';

abstract class HiveService {
  ///Device
  Future<Result<DeviceLocal>> saveDevice({
    required DeviceRemote remoteDevice,
  });

  Future<Result<DeviceLocal>> getDevice();

  Future<Result<void>> deleteDevice();

  ///Threads

  Future<Result<ThreadLocal>> saveThread({
    required ThreadRemote remoteThread,
  });

  Future<Result<List<ThreadLocal>>> getThreads({
    required int page,
    required int pageSize,
  });

  Future<Result<ThreadLocal>> deleteThread({
    required String threadId,
  });

  ///Messages

  Future<Result<MessageLocal>> saveMessage({
    required String threadId,
    required MessageRemote remoteMessage,
  });

  Future<Result<List<MessageLocal>>> getMessages({
    required String threadId,
    required int page,
    required int pageSize,
  });

  Future<Result<MessageLocal>> deleteMessage({
    required String threadId,
    required String messageId,
  });

  ///Local file cache
  Future<Result<void>> saveFileCache({
    required String url,
    required Sha1 sha1,
  });

  Future<Result<Sha1>> getUrlCache({
    required String url,
  });
}

