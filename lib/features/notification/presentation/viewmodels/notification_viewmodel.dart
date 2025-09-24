import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:myapp/features/notification/domain/entities/notification_entity.dart';
import 'package:myapp/features/notification/domain/repositories/notification_repository.dart';
import 'package:myapp/features/notification/data/repositories/notification_repository_impl.dart';

part 'notification_viewmodel.freezed.dart';

// View Data for the UI
@freezed
class NotificationViewData with _$NotificationViewData {
  const factory NotificationViewData({
    required String id,
    required String title,
    required String body,
    required String date,
    required bool isUnread,
    required String menu,
  }) = _NotificationViewData;
}

// Mapper from Entity to ViewData
extension NotificationMapper on Notification {
  NotificationViewData toViewData() {
    return NotificationViewData(
      id: data.id,
      title: notification.title,
      body: notification.body,
      date: DateFormat('MMM d, yyyy HH:mm').format(DateTime.parse(data.dateTime)),
      isUnread: data.isUnread,
      menu: data.menu ?? '', // <-- MODIFIED THIS LINE
    );
  }
}

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<NotificationViewData> notifications,
    @Default(true) bool isLoading,
  }) = _NotificationState;
}

class NotificationViewModel extends StateNotifier<NotificationState> {
  final NotificationRepository _repository;

  NotificationViewModel(this._repository) : super(const NotificationState()) {
    fetchNotifications();
  }

  Future<void> fetchNotifications() async {
    state = state.copyWith(isLoading: true);
    final notifications = await _repository.getNotifications();
    final viewData = notifications.map((e) => e.toViewData()).toList();
    state = state.copyWith(notifications: viewData, isLoading: false);
  }

  int get unreadCount => state.notifications.where((n) => n.isUnread).length;
}

final notificationViewModelProvider = StateNotifierProvider<NotificationViewModel, NotificationState>((ref) {
  final repository = ref.watch(notificationRepositoryProvider);
  return NotificationViewModel(repository);
});
