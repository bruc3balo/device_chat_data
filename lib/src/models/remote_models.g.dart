// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateDeviceRemoteImpl _$$CreateDeviceRemoteImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateDeviceRemoteImpl(
      id: json['id'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CreateDeviceRemoteImplToJson(
        _$CreateDeviceRemoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profilePictureUrl': instance.profilePictureUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreateThreadRemoteImpl _$$CreateThreadRemoteImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateThreadRemoteImpl(
      id: json['id'] as String,
      participantDeviceIds: (json['participantDeviceIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CreateThreadRemoteImplToJson(
        _$CreateThreadRemoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participantDeviceIds': instance.participantDeviceIds,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$CreateMessageRemoteImpl _$$CreateMessageRemoteImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateMessageRemoteImpl(
      id: json['id'] as String,
      sentBy: json['sentBy'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
    );

Map<String, dynamic> _$$CreateMessageRemoteImplToJson(
        _$CreateMessageRemoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sentBy': instance.sentBy,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.text: 'text',
  MediaType.image: 'image',
};
