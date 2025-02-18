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

class HiveServiceImpl extends HiveService {
  final HiveAesCipher _hiveCypher;

  HiveServiceImpl({
    required HiveAesCipher hiveCypher,
  }) : _hiveCypher = hiveCypher;

  ///Device Operations
  @override
  Future<Result<DeviceLocal>> getDevice() async {
    try {
      var box = await _deviceBox;
      if (box.isEmpty) {
        return Result.error(errorMessage: "No device found locally");
      }
      return Result.success(data: box.values.first);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<DeviceLocal>> saveDevice({
    required DeviceRemote remoteDevice,
  }) async {
    try {
      var box = await _deviceBox;
      if (box.isNotEmpty) {
        return Result.error(errorMessage: "Device already exists locally");
      }

      DeviceLocal localDevice = remoteDevice.toLocalDevice;
      await box.add(localDevice);
      return Result.success(data: localDevice);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<void>> deleteDevice() async {
    try {
      var box = await _deviceBox;
      if (box.isEmpty) {
        return Result.error(
          errorMessage: "No device found locally",
        );
      }

      await box.clear();
      return Result.success(data: null);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  ///Thread operations
  @override
  Future<Result<ThreadLocal>> saveThread({
    required ThreadRemote remoteThread,
  }) async {
    try {
      var box = await _threadBox;
      ThreadLocal localThread = remoteThread.toLocalThread;
      await box.put(remoteThread.id, localThread);
      return Result.success(data: localThread);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<List<ThreadLocal>>> getThreads({
    required int page,
    required int pageSize,
  }) async {
    try {
      var box = await _threadBox;
      List<ThreadLocal> threads = box.values.skip(page).take(pageSize).toList();
      return Result.success(data: threads);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<ThreadLocal>> deleteThread({
    required String threadId,
  }) async {
    try {
      var box = await _threadBox;
      if (!box.containsKey(threadId)) {
        return Result.error(
          errorMessage: "Thread not found locally",
        );
      }

      ThreadLocal threadLocal = box.get(threadId)!;
      await box.delete(threadLocal.id);
      return Result.success(data: threadLocal);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  ///Message operations

  @override
  Future<Result<MessageLocal>> saveMessage({
    required String threadId,
    required MessageRemote remoteMessage,
  }) async {
    try {
      var box = await _messageBox(threadId);
      MessageLocal localMessage = remoteMessage.toLocalMessage;
      await box.put(localMessage.id, localMessage);
      return Result.success(data: localMessage);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<MessageLocal>> deleteMessage({
    required String threadId,
    required String messageId,
  }) async {
    try {
      var box = await _messageBox(threadId);
      if (!box.containsKey(messageId)) {
        return Result.error(
          errorMessage: "Message not found locally",
        );
      }

      MessageLocal localMessage = box.get(messageId)!;
      await box.delete(localMessage.id);
      return Result.success(data: localMessage);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<List<MessageLocal>>> getMessages({
    required String threadId,
    required int page,
    required int pageSize,
  }) async {
    try {
      var box = await _messageBox(threadId);
      List<MessageLocal> messages =
          box.values.skip(page).take(pageSize).toList();
      return Result.success(data: messages);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<Sha1>> getUrlCache({required String url}) async {
    try {
      var box = await _lfsCacheBox;
      if(!box.containsKey(url)) {
        return Result.error(errorMessage: "Url not cached");
      }
      LocalFileCache localFileCache = box.get(url)!;
      return Result.success(data: Sha1(localFileCache.sha1));
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<void>> saveFileCache({
    required String url,
    required Sha1 sha1,
  }) async {
    try {
      var box = await _lfsCacheBox;
      await box.put(url, LocalFileCache(sha1: sha1.hash, url: url));
      return Result.success(data: null);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  Future<Box<DeviceLocal>> get _deviceBox => Hive.openBox<DeviceLocal>(
        'device',
        encryptionCipher: _hiveCypher,
      );

  Future<Box<ThreadLocal>> get _threadBox => Hive.openBox<ThreadLocal>(
        'threads',
        encryptionCipher: _hiveCypher,
      );

  Future<Box<MessageLocal>> _messageBox(String threadId) =>
      Hive.openBox<MessageLocal>(
        threadId,
        encryptionCipher: _hiveCypher,
      );

  Future<Box<LocalFileCache>> get _lfsCacheBox => Hive.openBox<LocalFileCache>(
        'file_cache',
        encryptionCipher: _hiveCypher,
      );
}
