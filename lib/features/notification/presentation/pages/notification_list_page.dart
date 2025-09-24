import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/notification/presentation/viewmodels/notification_viewmodel.dart';

class NotificationListPage extends ConsumerWidget {
  const NotificationListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationState = ref.watch(notificationViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('การแจ้งเตือน'),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              context.go('/');
            },
          ),
        ],
      ),
      body: notificationState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : notificationState.notifications.isEmpty
              ? const Center(child: Text('ไม่มีการแจ้งเตือน'))
              : ListView.builder(
                  itemCount: notificationState.notifications.length,
                  itemBuilder: (context, index) {
                    final notification = notificationState.notifications[index];
                    return NotificationItem(notification: notification);
                  },
                ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final NotificationViewData notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: notification.isUnread ? Colors.blue : Colors.grey,
        child: const Icon(Icons.notifications, color: Colors.white),
      ),
      title: Text(notification.title),
      subtitle: Text('${notification.body}\nID: ${notification.id}'),
      trailing: Text(notification.date),
      onTap: () {
        if (notification.menu == 'parcel') {
          context.push('/parcel_detail/${notification.id}');
        }
      },
    );
  }
}
