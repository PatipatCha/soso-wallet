import 'dart:convert';
import 'package:myapp/features/parcel/domain/parcel.dart';
import 'package:myapp/features/parcel/domain/repositories/parcel_repository.dart';

class ParcelRepositoryImpl implements ParcelRepository {
  final String _jsonString = '''
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

  @override
  Future<List<Parcel>> getParcels() async {
    final List<dynamic> parsedJson = jsonDecode(_jsonString);
    return parsedJson.map((json) => Parcel.fromJson(json)).toList();
  }

  @override
  Future<Parcel> getParcelById(String id) async {
    final parcels = await getParcels();
    return parcels.firstWhere((parcel) => parcel.recordId == id, orElse: () => throw Exception('Parcel not found'));
  }
}
