import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/features/parcel/presentation/viewmodels/parcel_viewmodel.dart';

class ParcelDetailPage extends ConsumerWidget {
  final String recordId;

  const ParcelDetailPage({super.key, required this.recordId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parcelState = ref.watch(parcelViewModelProvider(recordId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('รายละเอียดพัสดุ'),
      ),
      body: parcelState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (message) => Center(child: Text(message)),
        data: (parcel) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailRow('โครงการ', parcel.visitorProjectName),
                _buildDetailRow('ประเภทผู้มาติดต่อ', parcel.visitorType),
                _buildDetailRow('ทะเบียนรถ', parcel.vehicleIdPlate),
                _buildDetailRow('ยี่ห้อรถ', parcel.vehicleBrandTitle),
                _buildDetailRow('สีรถ', parcel.vehicleColorTitle),
                _buildDetailRow('ชื่อผู้มาติดต่อ', parcel.visitorName),
                _buildDetailRow('หมายเหตุ', parcel.visitorRemark),
                _buildDetailRow('วัตถุประสงค์', parcel.visitorPurposeTitle),
                _buildDetailRow('ห้อง', parcel.visitorUnitTitle),
                _buildDetailRow('ประเภทรถ', parcel.vehicleTypeTitle),
                _buildDetailRow('เวลาเข้า', parcel.visitorInDate),
                _buildDetailRow('เวลาออก', parcel.visitorOutDate),
                const SizedBox(height: 16.0),
                if (parcel.isVisitorVehicleImage)
                  Center(
                    child: Image.network(parcel.vehicleImageUrl, height: 150),
                  ),
                if (parcel.isVisitorIdcardImage)
                  Center(
                    child: Image.network(parcel.visitorImageUrl, height: 150),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
