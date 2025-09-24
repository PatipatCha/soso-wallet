import 'package:myapp/features/notification/domain/entities/notification_entity.dart';

// Data Transfer Object (DTO) for the data layer.
// It represents the notification as it is received from a data source (e.g., API).
class NotificationModel {
  final NotificationPayloadModel notification;
  final NotificationDataModel data;

  NotificationModel({
    required this.notification,
    required this.data,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      notification: NotificationPayloadModel.fromJson(json['notification']),
      data: NotificationDataModel.fromJson(json['data']),
    );
  }

  // Method to convert the data model to a domain entity
  Notification toDomain() {
    return Notification(
      jeabId: data.jeabId, // Pass the jeabId from data
      token: '', // Assuming token is not part of the model, provide a default or fetch it
      notification: notification.toDomain(),
      data: data.toDomain(),
    );
  }
}

class NotificationPayloadModel {
  final String title;
  final String body;

  NotificationPayloadModel({required this.title, required this.body});

  factory NotificationPayloadModel.fromJson(Map<String, dynamic> json) {
    return NotificationPayloadModel(
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }

  NotificationPayload toDomain() {
    return NotificationPayload(
      title: title,
      body: body,
    );
  }
}

class NotificationDataModel {
  final bool isUnread;
  final String menu;
  final String titleHeaderKey;
  final String id;
  final String dateTime;
  final String jeabId;

  NotificationDataModel({
    required this.isUnread,
    required this.menu,
    required this.titleHeaderKey,
    required this.id,
    required this.dateTime,
    required this.jeabId,
  });

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) {
    return NotificationDataModel(
      isUnread: json['is_unread'] as bool,
      menu: json['menu'] as String,
      titleHeaderKey: json['title_header_key'] as String,
      id: json['id'] as String,
      dateTime: json['date_time'] as String,
      jeabId: json['jeab_id'] as String,
    );
  }

  NotificationData toDomain() {
    return NotificationData(
      isUnread: isUnread,
      menu: menu,
      titleHeaderKey: titleHeaderKey,
      id: id,
      dateTime: dateTime,
      jeabId: jeabId,
    );
  }
}
