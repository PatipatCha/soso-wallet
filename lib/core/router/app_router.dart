import 'package:go_router/go_router.dart';
import 'package:myapp/features/home/presentation/pages/home_page.dart';
import 'package:myapp/features/notification/presentation/pages/notification_list_page.dart';
import 'package:myapp/features/parcel/presentation/pages/parcel_detail_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationListPage(),
    ),
    GoRoute(
      path: '/parcel_detail/:recordId',
      builder: (context, state) {
        final recordId = state.pathParameters['recordId']!;
        return ParcelDetailPage(recordId: recordId);
      },
    ),
  ],
);
