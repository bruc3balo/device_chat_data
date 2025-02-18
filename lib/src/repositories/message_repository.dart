import 'package:device_chat_data/src/models/data_models.dart';
import 'package:device_chat_data/src/models/hive_models.dart';
import 'package:device_chat_data/src/models/remote_models.dart';

abstract class MessageRepository {
  Future<Result<MessageLocal>> createTextMessage({
    required String threadId,
    required String content,
  });

  Future<Result<MessageLocal>> createMediaMessage({
    required String threadId,
    required String content,
    required MediaType mediaType,
  });

  Future<Result<ThreadLocal>> getMessages({
    required String threadId,
    required int page,
    required int pageSize,
  });

  Future<Result<ThreadLocal>> deleteMessage({
    required String threadId,
    required String messageId,
  });
}