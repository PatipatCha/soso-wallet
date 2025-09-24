import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/parcel/domain/parcel.dart';
import 'package:myapp/features/parcel/presentation/viewmodels/parcel_viewmodel.dart'; // Use the same provider

class ParcelListPage extends ConsumerWidget {
  const ParcelListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // We can't directly watch the ViewModel here as it's a family provider needing an ID.
    // Instead, we will fetch the list of parcels from the repository.
    final parcelRepository = ref.watch(parcelRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการพัสดุ'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: FutureBuilder<List<Parcel>>(
        future: parcelRepository.getParcels(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('ไม่มีข้อมูลพัสดุ'));
          }

          final parcels = snapshot.data!;

          return ListView.builder(
            itemCount: parcels.length,
            itemBuilder: (context, index) {
              final parcel = parcels[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(parcel.vehicleImageUrl),
                  ),
                  title: Text(parcel.visitorName),
                  subtitle: Text(parcel.visitorPurposeTitle),
                  trailing: Text(parcel.visitorInDate),
                  onTap: () {
                    context.push('/parcel_detail/${parcel.recordId}');
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
