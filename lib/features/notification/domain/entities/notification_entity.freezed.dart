// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  @HiveField(0)
  @JsonKey(name: 'jeab_id')
  String get jeabId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get token => throw _privateConstructorUsedError;
  @HiveField(2)
  NotificationPayload get notification => throw _privateConstructorUsedError;
  @HiveField(3)
  NotificationData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'jeab_id') String jeabId,
      @HiveField(1) String token,
      @HiveField(2) NotificationPayload notification,
      @HiveField(3) NotificationData data});

  $NotificationPayloadCopyWith<$Res> get notification;
  $NotificationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jeabId = null,
    Object? token = null,
    Object? notification = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      jeabId: null == jeabId
          ? _value.jeabId
          : jeabId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationPayload,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationPayloadCopyWith<$Res> get notification {
    return $NotificationPayloadCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationDataCopyWith<$Res> get data {
    return $NotificationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'jeab_id') String jeabId,
      @HiveField(1) String token,
      @HiveField(2) NotificationPayload notification,
      @HiveField(3) NotificationData data});

  @override
  $NotificationPayloadCopyWith<$Res> get notification;
  @override
  $NotificationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jeabId = null,
    Object? token = null,
    Object? notification = null,
    Object? data = null,
  }) {
    return _then(_$NotificationImpl(
      jeabId: null == jeabId
          ? _value.jeabId
          : jeabId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationPayload,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'NotificationAdapter')
class _$NotificationImpl implements _Notification {
  _$NotificationImpl(
      {@HiveField(0) @JsonKey(name: 'jeab_id') required this.jeabId,
      @HiveField(1) required this.token,
      @HiveField(2) required this.notification,
      @HiveField(3) required this.data});

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'jeab_id')
  final String jeabId;
  @override
  @HiveField(1)
  final String token;
  @override
  @HiveField(2)
  final NotificationPayload notification;
  @override
  @HiveField(3)
  final NotificationData data;

  @override
  String toString() {
    return 'Notification(jeabId: $jeabId, token: $token, notification: $notification, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.jeabId, jeabId) || other.jeabId == jeabId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.notification, notification) ||
                other.notification == notification) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jeabId, token, notification, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(
      this,
    );
  }
}

abstract class _Notification implements Notification {
  factory _Notification(
      {@HiveField(0) @JsonKey(name: 'jeab_id') required final String jeabId,
      @HiveField(1) required final String token,
      @HiveField(2) required final NotificationPayload notification,
      @HiveField(3) required final NotificationData data}) = _$NotificationImpl;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'jeab_id')
  String get jeabId;
  @override
  @HiveField(1)
  String get token;
  @override
  @HiveField(2)
  NotificationPayload get notification;
  @override
  @HiveField(3)
  NotificationData get data;
  @override
  @JsonKey(ignore: true)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) {
  return _NotificationPayload.fromJson(json);
}

/// @nodoc
mixin _$NotificationPayload {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationPayloadCopyWith<NotificationPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPayloadCopyWith<$Res> {
  factory $NotificationPayloadCopyWith(
          NotificationPayload value, $Res Function(NotificationPayload) then) =
      _$NotificationPayloadCopyWithImpl<$Res, NotificationPayload>;
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String body});
}

/// @nodoc
class _$NotificationPayloadCopyWithImpl<$Res, $Val extends NotificationPayload>
    implements $NotificationPayloadCopyWith<$Res> {
  _$NotificationPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPayloadImplCopyWith<$Res>
    implements $NotificationPayloadCopyWith<$Res> {
  factory _$$NotificationPayloadImplCopyWith(_$NotificationPayloadImpl value,
          $Res Function(_$NotificationPayloadImpl) then) =
      __$$NotificationPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String body});
}

/// @nodoc
class __$$NotificationPayloadImplCopyWithImpl<$Res>
    extends _$NotificationPayloadCopyWithImpl<$Res, _$NotificationPayloadImpl>
    implements _$$NotificationPayloadImplCopyWith<$Res> {
  __$$NotificationPayloadImplCopyWithImpl(_$NotificationPayloadImpl _value,
      $Res Function(_$NotificationPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$NotificationPayloadImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'NotificationPayloadAdapter')
class _$NotificationPayloadImpl implements _NotificationPayload {
  _$NotificationPayloadImpl(
      {@HiveField(0) required this.title, @HiveField(1) required this.body});

  factory _$NotificationPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPayloadImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String body;

  @override
  String toString() {
    return 'NotificationPayload(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPayloadImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPayloadImplCopyWith<_$NotificationPayloadImpl> get copyWith =>
      __$$NotificationPayloadImplCopyWithImpl<_$NotificationPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPayloadImplToJson(
      this,
    );
  }
}

abstract class _NotificationPayload implements NotificationPayload {
  factory _NotificationPayload(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String body}) = _$NotificationPayloadImpl;

  factory _NotificationPayload.fromJson(Map<String, dynamic> json) =
      _$NotificationPayloadImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$NotificationPayloadImplCopyWith<_$NotificationPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  @HiveField(0)
  @JsonKey(name: 'is_unread')
  bool get isUnread => throw _privateConstructorUsedError;
  @HiveField(1)
  String get menu => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'title_header_key')
  String get titleHeaderKey => throw _privateConstructorUsedError;
  @HiveField(3)
  String get id => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'date_time')
  String get dateTime => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'jeab_id')
  String get jeabId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'is_unread') bool isUnread,
      @HiveField(1) String menu,
      @HiveField(2) @JsonKey(name: 'title_header_key') String titleHeaderKey,
      @HiveField(3) String id,
      @HiveField(4) @JsonKey(name: 'date_time') String dateTime,
      @HiveField(5) @JsonKey(name: 'jeab_id') String jeabId});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnread = null,
    Object? menu = null,
    Object? titleHeaderKey = null,
    Object? id = null,
    Object? dateTime = null,
    Object? jeabId = null,
  }) {
    return _then(_value.copyWith(
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
      titleHeaderKey: null == titleHeaderKey
          ? _value.titleHeaderKey
          : titleHeaderKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      jeabId: null == jeabId
          ? _value.jeabId
          : jeabId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(_$NotificationDataImpl value,
          $Res Function(_$NotificationDataImpl) then) =
      __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'is_unread') bool isUnread,
      @HiveField(1) String menu,
      @HiveField(2) @JsonKey(name: 'title_header_key') String titleHeaderKey,
      @HiveField(3) String id,
      @HiveField(4) @JsonKey(name: 'date_time') String dateTime,
      @HiveField(5) @JsonKey(name: 'jeab_id') String jeabId});
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(_$NotificationDataImpl _value,
      $Res Function(_$NotificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUnread = null,
    Object? menu = null,
    Object? titleHeaderKey = null,
    Object? id = null,
    Object? dateTime = null,
    Object? jeabId = null,
  }) {
    return _then(_$NotificationDataImpl(
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
      titleHeaderKey: null == titleHeaderKey
          ? _value.titleHeaderKey
          : titleHeaderKey // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      jeabId: null == jeabId
          ? _value.jeabId
          : jeabId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'NotificationDataAdapter')
class _$NotificationDataImpl implements _NotificationData {
  _$NotificationDataImpl(
      {@HiveField(0) @JsonKey(name: 'is_unread') required this.isUnread,
      @HiveField(1) required this.menu,
      @HiveField(2)
      @JsonKey(name: 'title_header_key')
      required this.titleHeaderKey,
      @HiveField(3) required this.id,
      @HiveField(4) @JsonKey(name: 'date_time') required this.dateTime,
      @HiveField(5) @JsonKey(name: 'jeab_id') required this.jeabId});

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'is_unread')
  final bool isUnread;
  @override
  @HiveField(1)
  final String menu;
  @override
  @HiveField(2)
  @JsonKey(name: 'title_header_key')
  final String titleHeaderKey;
  @override
  @HiveField(3)
  final String id;
  @override
  @HiveField(4)
  @JsonKey(name: 'date_time')
  final String dateTime;
  @override
  @HiveField(5)
  @JsonKey(name: 'jeab_id')
  final String jeabId;

  @override
  String toString() {
    return 'NotificationData(isUnread: $isUnread, menu: $menu, titleHeaderKey: $titleHeaderKey, id: $id, dateTime: $dateTime, jeabId: $jeabId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.isUnread, isUnread) ||
                other.isUnread == isUnread) &&
            (identical(other.menu, menu) || other.menu == menu) &&
            (identical(other.titleHeaderKey, titleHeaderKey) ||
                other.titleHeaderKey == titleHeaderKey) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.jeabId, jeabId) || other.jeabId == jeabId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isUnread, menu, titleHeaderKey, id, dateTime, jeabId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  factory _NotificationData(
      {@HiveField(0) @JsonKey(name: 'is_unread') required final bool isUnread,
      @HiveField(1) required final String menu,
      @HiveField(2)
      @JsonKey(name: 'title_header_key')
      required final String titleHeaderKey,
      @HiveField(3) required final String id,
      @HiveField(4) @JsonKey(name: 'date_time') required final String dateTime,
      @HiveField(5)
      @JsonKey(name: 'jeab_id')
      required final String jeabId}) = _$NotificationDataImpl;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'is_unread')
  bool get isUnread;
  @override
  @HiveField(1)
  String get menu;
  @override
  @HiveField(2)
  @JsonKey(name: 'title_header_key')
  String get titleHeaderKey;
  @override
  @HiveField(3)
  String get id;
  @override
  @HiveField(4)
  @JsonKey(name: 'date_time')
  String get dateTime;
  @override
  @HiveField(5)
  @JsonKey(name: 'jeab_id')
  String get jeabId;
  @override
  @JsonKey(ignore: true)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
