import 'package:device_chat_data/src/models/data_models.dart';
import 'package:device_chat_data/src/models/hive_models.dart';

abstract class ThreadRepository {
  Future<Result<ThreadLocal>> createThread({
    required String myDeviceId,
    required String otherDeviceId,
  });

  Future<Result<ThreadLocal>> getThreads({
    required int page,
    required int pageSize,
  });

  Future<Result<ThreadLocal>> deleteThread({
    required String threadId,
  });
}