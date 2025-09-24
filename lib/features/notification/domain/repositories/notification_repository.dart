import 'package:myapp/features/notification/domain/entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<List<Notification>> getNotifications();
}
