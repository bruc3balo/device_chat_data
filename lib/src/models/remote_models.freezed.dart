// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceRemote _$DeviceRemoteFromJson(Map<String, dynamic> json) {
  return _CreateDeviceRemote.fromJson(json);
}

/// @nodoc
mixin _$DeviceRemote {
  String get id => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String profilePictureUrl, DateTime createdAt)
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String profilePictureUrl, DateTime createdAt)?
        create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String profilePictureUrl, DateTime createdAt)?
        create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDeviceRemote value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDeviceRemote value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDeviceRemote value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DeviceRemote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceRemoteCopyWith<DeviceRemote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceRemoteCopyWith<$Res> {
  factory $DeviceRemoteCopyWith(
          DeviceRemote value, $Res Function(DeviceRemote) then) =
      _$DeviceRemoteCopyWithImpl<$Res, DeviceRemote>;
  @useResult
  $Res call({String id, String profilePictureUrl, DateTime createdAt});
}

/// @nodoc
class _$DeviceRemoteCopyWithImpl<$Res, $Val extends DeviceRemote>
    implements $DeviceRemoteCopyWith<$Res> {
  _$DeviceRemoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePictureUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDeviceRemoteImplCopyWith<$Res>
    implements $DeviceRemoteCopyWith<$Res> {
  factory _$$CreateDeviceRemoteImplCopyWith(_$CreateDeviceRemoteImpl value,
          $Res Function(_$CreateDeviceRemoteImpl) then) =
      __$$CreateDeviceRemoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String profilePictureUrl, DateTime createdAt});
}

/// @nodoc
class __$$CreateDeviceRemoteImplCopyWithImpl<$Res>
    extends _$DeviceRemoteCopyWithImpl<$Res, _$CreateDeviceRemoteImpl>
    implements _$$CreateDeviceRemoteImplCopyWith<$Res> {
  __$$CreateDeviceRemoteImplCopyWithImpl(_$CreateDeviceRemoteImpl _value,
      $Res Function(_$CreateDeviceRemoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profilePictureUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$CreateDeviceRemoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateDeviceRemoteImpl implements _CreateDeviceRemote {
  const _$CreateDeviceRemoteImpl(
      {required this.id,
      required this.profilePictureUrl,
      required this.createdAt});

  factory _$CreateDeviceRemoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateDeviceRemoteImplFromJson(json);

  @override
  final String id;
  @override
  final String profilePictureUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'DeviceRemote.create(id: $id, profilePictureUrl: $profilePictureUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDeviceRemoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, profilePictureUrl, createdAt);

  /// Create a copy of DeviceRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDeviceRemoteImplCopyWith<_$CreateDeviceRemoteImpl> get copyWith =>
      __$$CreateDeviceRemoteImplCopyWithImpl<_$CreateDeviceRemoteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id, String profilePictureUrl, DateTime createdAt)
        create,
  }) {
    return create(id, profilePictureUrl, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String profilePictureUrl, DateTime createdAt)?
        create,
  }) {
    return create?.call(id, profilePictureUrl, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String profilePictureUrl, DateTime createdAt)?
        create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(id, profilePictureUrl, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateDeviceRemote value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateDeviceRemote value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateDeviceRemote value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateDeviceRemoteImplToJson(
      this,
    );
  }
}

abstract class _CreateDeviceRemote implements DeviceRemote {
  const factory _CreateDeviceRemote(
      {required final String id,
      required final String profilePictureUrl,
      required final DateTime createdAt}) = _$CreateDeviceRemoteImpl;

  factory _CreateDeviceRemote.fromJson(Map<String, dynamic> json) =
      _$CreateDeviceRemoteImpl.fromJson;

  @override
  String get id;
  @override
  String get profilePictureUrl;
  @override
  DateTime get createdAt;

  /// Create a copy of DeviceRemote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDeviceRemoteImplCopyWith<_$CreateDeviceRemoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThreadRemote _$ThreadRemoteFromJson(Map<String, dynamic> json) {
  return _CreateThreadRemote.fromJson(json);
}

/// @nodoc
mixin _$ThreadRemote {
  String get id => throw _privateConstructorUsedError;
  List<String> get participantDeviceIds => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ThreadRemote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThreadRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThreadRemoteCopyWith<ThreadRemote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadRemoteCopyWith<$Res> {
  factory $ThreadRemoteCopyWith(
          ThreadRemote value, $Res Function(ThreadRemote) then) =
      _$ThreadRemoteCopyWithImpl<$Res, ThreadRemote>;
  @useResult
  $Res call({String id, List<String> participantDeviceIds, DateTime createdAt});
}

/// @nodoc
class _$ThreadRemoteCopyWithImpl<$Res, $Val extends ThreadRemote>
    implements $ThreadRemoteCopyWith<$Res> {
  _$ThreadRemoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThreadRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participantDeviceIds = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participantDeviceIds: null == participantDeviceIds
          ? _value.participantDeviceIds
          : participantDeviceIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateThreadRemoteImplCopyWith<$Res>
    implements $ThreadRemoteCopyWith<$Res> {
  factory _$$CreateThreadRemoteImplCopyWith(_$CreateThreadRemoteImpl value,
          $Res Function(_$CreateThreadRemoteImpl) then) =
      __$$CreateThreadRemoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<String> participantDeviceIds, DateTime createdAt});
}

/// @nodoc
class __$$CreateThreadRemoteImplCopyWithImpl<$Res>
    extends _$ThreadRemoteCopyWithImpl<$Res, _$CreateThreadRemoteImpl>
    implements _$$CreateThreadRemoteImplCopyWith<$Res> {
  __$$CreateThreadRemoteImplCopyWithImpl(_$CreateThreadRemoteImpl _value,
      $Res Function(_$CreateThreadRemoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThreadRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participantDeviceIds = null,
    Object? createdAt = null,
  }) {
    return _then(_$CreateThreadRemoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participantDeviceIds: null == participantDeviceIds
          ? _value._participantDeviceIds
          : participantDeviceIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateThreadRemoteImpl implements _CreateThreadRemote {
  const _$CreateThreadRemoteImpl(
      {required this.id,
      required final List<String> participantDeviceIds,
      required this.createdAt})
      : _participantDeviceIds = participantDeviceIds;

  factory _$CreateThreadRemoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateThreadRemoteImplFromJson(json);

  @override
  final String id;
  final List<String> _participantDeviceIds;
  @override
  List<String> get participantDeviceIds {
    if (_participantDeviceIds is EqualUnmodifiableListView)
      return _participantDeviceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantDeviceIds);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ThreadRemote(id: $id, participantDeviceIds: $participantDeviceIds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateThreadRemoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._participantDeviceIds, _participantDeviceIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_participantDeviceIds), createdAt);

  /// Create a copy of ThreadRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateThreadRemoteImplCopyWith<_$CreateThreadRemoteImpl> get copyWith =>
      __$$CreateThreadRemoteImplCopyWithImpl<_$CreateThreadRemoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateThreadRemoteImplToJson(
      this,
    );
  }
}

abstract class _CreateThreadRemote implements ThreadRemote {
  const factory _CreateThreadRemote(
      {required final String id,
      required final List<String> participantDeviceIds,
      required final DateTime createdAt}) = _$CreateThreadRemoteImpl;

  factory _CreateThreadRemote.fromJson(Map<String, dynamic> json) =
      _$CreateThreadRemoteImpl.fromJson;

  @override
  String get id;
  @override
  List<String> get participantDeviceIds;
  @override
  DateTime get createdAt;

  /// Create a copy of ThreadRemote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateThreadRemoteImplCopyWith<_$CreateThreadRemoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageRemote _$MessageRemoteFromJson(Map<String, dynamic> json) {
  return _CreateMessageRemote.fromJson(json);
}

/// @nodoc
mixin _$MessageRemote {
  String get id => throw _privateConstructorUsedError;
  String get sentBy => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  MediaType get mediaType => throw _privateConstructorUsedError;

  /// Serializes this MessageRemote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageRemoteCopyWith<MessageRemote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRemoteCopyWith<$Res> {
  factory $MessageRemoteCopyWith(
          MessageRemote value, $Res Function(MessageRemote) then) =
      _$MessageRemoteCopyWithImpl<$Res, MessageRemote>;
  @useResult
  $Res call(
      {String id,
      String sentBy,
      String content,
      DateTime createdAt,
      DateTime updatedAt,
      MediaType mediaType});
}

/// @nodoc
class _$MessageRemoteCopyWithImpl<$Res, $Val extends MessageRemote>
    implements $MessageRemoteCopyWith<$Res> {
  _$MessageRemoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sentBy = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? mediaType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sentBy: null == sentBy
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateMessageRemoteImplCopyWith<$Res>
    implements $MessageRemoteCopyWith<$Res> {
  factory _$$CreateMessageRemoteImplCopyWith(_$CreateMessageRemoteImpl value,
          $Res Function(_$CreateMessageRemoteImpl) then) =
      __$$CreateMessageRemoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sentBy,
      String content,
      DateTime createdAt,
      DateTime updatedAt,
      MediaType mediaType});
}

/// @nodoc
class __$$CreateMessageRemoteImplCopyWithImpl<$Res>
    extends _$MessageRemoteCopyWithImpl<$Res, _$CreateMessageRemoteImpl>
    implements _$$CreateMessageRemoteImplCopyWith<$Res> {
  __$$CreateMessageRemoteImplCopyWithImpl(_$CreateMessageRemoteImpl _value,
      $Res Function(_$CreateMessageRemoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageRemote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sentBy = null,
    Object? content = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? mediaType = null,
  }) {
    return _then(_$CreateMessageRemoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sentBy: null == sentBy
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMessageRemoteImpl implements _CreateMessageRemote {
  const _$CreateMessageRemoteImpl(
      {required this.id,
      required this.sentBy,
      required this.content,
      required this.createdAt,
      required this.updatedAt,
      required this.mediaType});

  factory _$CreateMessageRemoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMessageRemoteImplFromJson(json);

  @override
  final String id;
  @override
  final String sentBy;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final MediaType mediaType;

  @override
  String toString() {
    return 'MessageRemote(id: $id, sentBy: $sentBy, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMessageRemoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sentBy, sentBy) || other.sentBy == sentBy) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sentBy, content, createdAt, updatedAt, mediaType);

  /// Create a copy of MessageRemote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMessageRemoteImplCopyWith<_$CreateMessageRemoteImpl> get copyWith =>
      __$$CreateMessageRemoteImplCopyWithImpl<_$CreateMessageRemoteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMessageRemoteImplToJson(
      this,
    );
  }
}

abstract class _CreateMessageRemote implements MessageRemote {
  const factory _CreateMessageRemote(
      {required final String id,
      required final String sentBy,
      required final String content,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final MediaType mediaType}) = _$CreateMessageRemoteImpl;

  factory _CreateMessageRemote.fromJson(Map<String, dynamic> json) =
      _$CreateMessageRemoteImpl.fromJson;

  @override
  String get id;
  @override
  String get sentBy;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  MediaType get mediaType;

  /// Create a copy of MessageRemote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMessageRemoteImplCopyWith<_$CreateMessageRemoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
