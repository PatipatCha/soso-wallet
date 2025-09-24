import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/notification/data/models/notification_model.dart';

abstract class NotificationRemoteDataSource {
  Future<List<NotificationModel>> getNotifications();
}

class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  @override
  Future<List<NotificationModel>> getNotifications() async {
    // Simulate fetching data from a remote source (e.g., an API)
    await Future.delayed(const Duration(seconds: 1));

    // Sample JSON data
    final jsonData = '''
      [
        {
          "notification": {
            "title": "พัสดุมาถึงแล้ว",
            "body": "พัสดุหมายเลข TH123456789 ของคุณอยู่ที่จุดบริการ"
          },
          "data": {
            "is_unread": true,
            "menu": "parcel",
            "title_header_key": "parcel_arrived_title",
            "id": "68cbbe66a92cbf000cb9d5eb",
            "date_time": "2024-07-29 10:00",
            "jeab_id": "jeab-123"
          }
        },
        {
          "notification": {
            "title": "โปรโมชั่นใหม่",
            "body": "ส่วนลดพิเศษสำหรับคุณ! ดูรายละเอียดเพิ่มเติม"
          },
          "data": {
            "is_unread": true,
            "menu": "promotion",
            "title_header_key": "new_promotion_title",
            "id": "2",
            "date_time": "2024-07-29 09:30",
            "jeab_id": "jeab-456"
          }
        },
        {
          "notification": {
            "title": "การชำระเงินสำเร็จ",
            "body": "ขอบคุณที่ใช้บริการของเรา"
          },
          "data": {
            "is_unread": false,
            "menu": "payment",
            "title_header_key": "payment_successful_title",
            "id": "3",
            "date_time": "2024-07-28 15:45",
            "jeab_id": "jeab-789"
          }
        }
      ]
    ''';

    final List<dynamic> jsonList = json.decode(jsonData);
    return jsonList.map((json) => NotificationModel.fromJson(json)).toList();
  }
}

final notificationRemoteDataSourceProvider = Provider<NotificationRemoteDataSource>((ref) {
  return NotificationRemoteDataSourceImpl();
});
