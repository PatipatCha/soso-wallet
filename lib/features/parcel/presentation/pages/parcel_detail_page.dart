import 'package:flutter/material.dart';

class ParcelDetailPage extends StatelessWidget {
  final String recordId;

  const ParcelDetailPage({super.key, required this.recordId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายละเอียดพัสดุ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Record ID:', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(recordId, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
