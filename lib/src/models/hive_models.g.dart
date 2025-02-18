// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeviceLocalAdapter extends TypeAdapter<DeviceLocal> {
  @override
  final int typeId = 0;

  @override
  DeviceLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeviceLocal(
      id: fields[0] as String,
      profilePictureUrl: fields[1] as String,
      createdAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DeviceLocal obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.profilePictureUrl)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ThreadLocalAdapter extends TypeAdapter<ThreadLocal> {
  @override
  final int typeId = 1;

  @override
  ThreadLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThreadLocal(
      id: fields[0] as String,
      participantDeviceIds: (fields[1] as List).cast<String>(),
      createdAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ThreadLocal obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.participantDeviceIds)
      ..writeByte(2)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThreadLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MessageLocalAdapter extends TypeAdapter<MessageLocal> {
  @override
  final int typeId = 2;

  @override
  MessageLocal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageLocal(
      id: fields[0] as String,
      sentBy: fields[1] as String,
      content: fields[2] as String,
      createdAt: fields[3] as DateTime,
      updatedAt: fields[4] as DateTime,
      mediaType: fields[5] as MediaType,
    );
  }

  @override
  void write(BinaryWriter writer, MessageLocal obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.sentBy)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.mediaType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageLocalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
