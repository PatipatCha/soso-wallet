// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationViewData {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get isUnread => throw _privateConstructorUsedError;
  String get menu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationViewDataCopyWith<NotificationViewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationViewDataCopyWith<$Res> {
  factory $NotificationViewDataCopyWith(NotificationViewData value,
          $Res Function(NotificationViewData) then) =
      _$NotificationViewDataCopyWithImpl<$Res, NotificationViewData>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String date,
      bool isUnread,
      String menu});
}

/// @nodoc
class _$NotificationViewDataCopyWithImpl<$Res,
        $Val extends NotificationViewData>
    implements $NotificationViewDataCopyWith<$Res> {
  _$NotificationViewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? date = null,
    Object? isUnread = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationViewDataImplCopyWith<$Res>
    implements $NotificationViewDataCopyWith<$Res> {
  factory _$$NotificationViewDataImplCopyWith(_$NotificationViewDataImpl value,
          $Res Function(_$NotificationViewDataImpl) then) =
      __$$NotificationViewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String date,
      bool isUnread,
      String menu});
}

/// @nodoc
class __$$NotificationViewDataImplCopyWithImpl<$Res>
    extends _$NotificationViewDataCopyWithImpl<$Res, _$NotificationViewDataImpl>
    implements _$$NotificationViewDataImplCopyWith<$Res> {
  __$$NotificationViewDataImplCopyWithImpl(_$NotificationViewDataImpl _value,
      $Res Function(_$NotificationViewDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? date = null,
    Object? isUnread = null,
    Object? menu = null,
  }) {
    return _then(_$NotificationViewDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      isUnread: null == isUnread
          ? _value.isUnread
          : isUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotificationViewDataImpl implements _NotificationViewData {
  const _$NotificationViewDataImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.date,
      required this.isUnread,
      required this.menu});

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String date;
  @override
  final bool isUnread;
  @override
  final String menu;

  @override
  String toString() {
    return 'NotificationViewData(id: $id, title: $title, body: $body, date: $date, isUnread: $isUnread, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationViewDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isUnread, isUnread) ||
                other.isUnread == isUnread) &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, date, isUnread, menu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationViewDataImplCopyWith<_$NotificationViewDataImpl>
      get copyWith =>
          __$$NotificationViewDataImplCopyWithImpl<_$NotificationViewDataImpl>(
              this, _$identity);
}

abstract class _NotificationViewData implements NotificationViewData {
  const factory _NotificationViewData(
      {required final String id,
      required final String title,
      required final String body,
      required final String date,
      required final bool isUnread,
      required final String menu}) = _$NotificationViewDataImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get date;
  @override
  bool get isUnread;
  @override
  String get menu;
  @override
  @JsonKey(ignore: true)
  _$$NotificationViewDataImplCopyWith<_$NotificationViewDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  List<NotificationViewData> get notifications =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call({List<NotificationViewData> notifications, bool isLoading});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationViewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationViewData> notifications, bool isLoading});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? isLoading = null,
  }) {
    return _then(_$NotificationStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationViewData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {final List<NotificationViewData> notifications = const [],
      this.isLoading = true})
      : _notifications = notifications;

  final List<NotificationViewData> _notifications;
  @override
  @JsonKey()
  List<NotificationViewData> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final List<NotificationViewData> notifications,
      final bool isLoading}) = _$NotificationStateImpl;

  @override
  List<NotificationViewData> get notifications;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
