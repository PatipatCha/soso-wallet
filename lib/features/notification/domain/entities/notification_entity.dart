import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'notification_entity.freezed.dart';
part 'notification_entity.g.dart';

@freezed
class Notification with _$Notification {
  @HiveType(typeId: 0, adapterName: 'NotificationAdapter')
  factory Notification({
    @HiveField(0) @JsonKey(name: 'jeab_id') required String jeabId,
    @HiveField(1) required String token,
    @HiveField(2) required NotificationPayload notification,
    @HiveField(3) required NotificationData data,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@freezed
class NotificationPayload with _$NotificationPayload {
  @HiveType(typeId: 1, adapterName: 'NotificationPayloadAdapter')
  factory NotificationPayload({
    @HiveField(0) required String title,
    @HiveField(1) required String body,
  }) = _NotificationPayload;

  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);
}

@freezed
class NotificationData with _$NotificationData {
  @HiveType(typeId: 2, adapterName: 'NotificationDataAdapter')
  factory NotificationData({
    @HiveField(0) @JsonKey(name: 'is_unread') required bool isUnread,
    @HiveField(1) required String menu,
    @HiveField(2) @JsonKey(name: 'title_header_key') required String titleHeaderKey,
    @HiveField(3) required String id,
    @HiveField(4) @JsonKey(name: 'date_time') required String dateTime,
    @HiveField(5) @JsonKey(name: 'jeab_id') required String jeabId,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
