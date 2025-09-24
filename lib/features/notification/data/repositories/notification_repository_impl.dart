import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/notification/data/datasources/notification_remote_data_source.dart';
import 'package:myapp/features/notification/domain/entities/notification_entity.dart';
import 'package:myapp/features/notification/domain/repositories/notification_repository.dart';


class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _dataSource;

  NotificationRepositoryImpl(this._dataSource);

  @override
  Future<List<Notification>> getNotifications() async {
    final notificationModels = await _dataSource.getNotifications();
    return notificationModels.map((model) => model.toDomain()).toList();
  }
}

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final dataSource = ref.watch(notificationRemoteDataSourceProvider);
  return NotificationRepositoryImpl(dataSource);
});
