import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/home/presentation/pages/home_page.dart';
import 'package:myapp/features/notification/presentation/pages/notification_list_page.dart';
import 'package:myapp/features/parcel/presentation/pages/parcel_list_page.dart';
import 'package:myapp/features/parcel/presentation/pages/parcel_detail_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationListPage(),
    ),
    GoRoute(
      path: '/parcels',
      builder: (context, state) => const ParcelListPage(),
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
