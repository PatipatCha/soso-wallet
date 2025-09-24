import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/parcel/domain/parcel.dart';
import 'dart:convert';

class ParcelListPage extends StatelessWidget {
  const ParcelListPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String jsonString = '''
    [
      {
        "record_id": "68cbbe66a92cbf000cb9d5eb",
        "visitor_project_name": "เดอะ มูฟ ประดิพัทธ์",
        "visitor_type": "",
        "vehicle_id_plate": "สร4321",
        "vehicle_brand_title": "Mercedez Benz",
        "vehicle_brand_title_other": "",
        "vehicle_color_title": "",
        "visitor_name": "เดฟ",
        "visitor_remark": "",
        "visitor_purpose_title": "ส่งอาหาร",
        "visitor_unit_title": "343/702",
        "vehicle_type_title": "รถแท็กซี่",
        "visitor_in_date": "2025-09-18 15:10",
        "visitor_out_date": "",
        "visitor_total": "",
        "visitor_stamp": "",
        "visitor_stamp_title": "",
        "visitor_stamp_status": "",
        "visitor_stamp_remark": "",
        "visitor_stamp_date": "",
        "visitor_company_name": "",
        "visitor_mobile": "",
        "visitor_status": "ip",
        "vehicle_image_url": "https://jeabstorage.blob.core.windows.net/prd-image-vms/vms-no-image.png?si=PMCREAD&spr=https&sv=2024-11-04&sr=c&sig=ghxpnZ69JdTdpJcuYPyZHQrCA%2Bklx3S0fD2nLOqQV0A%3D",
        "visitor_image_url": "https://jeabstorage.blob.core.windows.net/prd-image-vms/vms-no-image.png?si=PMCREAD&spr=https&sv=2024-11-04&sr=c&sig=ghxpnZ69JdTdpJcuYPyZHQrCA%2Bklx3S0fD2nLOqQV0A%3D",
        "is_visitor_idcard_image": false,
        "is_visitor_vehicle_image": true
      }
    ]
    ''';

    final List<dynamic> parsedJson = jsonDecode(jsonString);
    final List<Parcel> parcels = parsedJson.map((json) => Parcel.fromJson(json)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการพัสดุ'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: ListView.builder(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ParcelDetailPage(parcel: parcel),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ParcelDetailPage extends StatelessWidget {
  final Parcel parcel;

  const ParcelDetailPage({super.key, required this.parcel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(parcel.visitorName),
      ),
      body: Padding(
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
