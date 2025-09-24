import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:myapp/features/notification/domain/entities/notification_entity.dart';
import 'package:myapp/features/notification/domain/repositories/notification_repository.dart';

part 'notification_notifier.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<Notification> notifications,
    @Default(true) bool isLoading,
  }) = _NotificationState;
}

class NotificationNotifier extends StateNotifier<NotificationState> {
  final NotificationRepository _repository;

  NotificationNotifier(this._repository) : super(const NotificationState()) {
    fetchNotifications();
  }

  Future<void> fetchNotifications() async {
    state = state.copyWith(isLoading: true);
    final notifications = await _repository.getNotifications();
    state = state.copyWith(notifications: notifications, isLoading: false);
  }

  int get unreadCount => state.notifications.where((n) => n.data.isUnread).length;
}

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return NotificationNotifier(repository);
});
