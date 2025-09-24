import 'package:json_annotation/json_annotation.dart';

part 'parcel.g.dart';

@JsonSerializable()
class Parcel {
  @JsonKey(name: 'record_id')
  final String recordId;
  @JsonKey(name: 'visitor_project_name')
  final String visitorProjectName;
  @JsonKey(name: 'visitor_type')
  final String visitorType;
  @JsonKey(name: 'vehicle_id_plate')
  final String vehicleIdPlate;
  @JsonKey(name: 'vehicle_brand_title')
  final String vehicleBrandTitle;
  @JsonKey(name: 'vehicle_brand_title_other')
  final String vehicleBrandTitleOther;
  @JsonKey(name: 'vehicle_color_title')
  final String vehicleColorTitle;
  @JsonKey(name: 'visitor_name')
  final String visitorName;
  @JsonKey(name: 'visitor_remark')
  final String visitorRemark;
  @JsonKey(name: 'visitor_purpose_title')
  final String visitorPurposeTitle;
  @JsonKey(name: 'visitor_unit_title')
  final String visitorUnitTitle;
  @JsonKey(name: 'vehicle_type_title')
  final String vehicleTypeTitle;
  @JsonKey(name: 'visitor_in_date')
  final String visitorInDate;
  @JsonKey(name: 'visitor_out_date')
  final String visitorOutDate;
  @JsonKey(name: 'visitor_total')
  final String visitorTotal;
  @JsonKey(name: 'visitor_stamp')
  final String visitorStamp;
  @JsonKey(name: 'visitor_stamp_title')
  final String visitorStampTitle;
  @JsonKey(name: 'visitor_stamp_status')
  final String visitorStampStatus;
  @JsonKey(name: 'visitor_stamp_remark')
  final String visitorStampRemark;
  @JsonKey(name: 'visitor_stamp_date')
  final String visitorStampDate;
  @JsonKey(name: 'visitor_company_name')
  final String visitorCompanyName;
  @JsonKey(name: 'visitor_mobile')
  final String visitorMobile;
  @JsonKey(name: 'visitor_status')
  final String visitorStatus;
  @JsonKey(name: 'vehicle_image_url')
  final String vehicleImageUrl;
  @JsonKey(name: 'visitor_image_url')
  final String visitorImageUrl;
  @JsonKey(name: 'is_visitor_idcard_image')
  final bool isVisitorIdcardImage;
  @JsonKey(name: 'is_visitor_vehicle_image')
  final bool isVisitorVehicleImage;

  Parcel({
    required this.recordId,
    required this.visitorProjectName,
    required this.visitorType,
    required this.vehicleIdPlate,
    required this.vehicleBrandTitle,
    required this.vehicleBrandTitleOther,
    required this.vehicleColorTitle,
    required this.visitorName,
    required this.visitorRemark,
    required this.visitorPurposeTitle,
    required this.visitorUnitTitle,
    required this.vehicleTypeTitle,
    required this.visitorInDate,
    required this.visitorOutDate,
    required this.visitorTotal,
    required this.visitorStamp,
    required this.visitorStampTitle,
    required this.visitorStampStatus,
    required this.visitorStampRemark,
    required this.visitorStampDate,
    required this.visitorCompanyName,
    required this.visitorMobile,
    required this.visitorStatus,
    required this.vehicleImageUrl,
    required this.visitorImageUrl,
    required this.isVisitorIdcardImage,
    required this.isVisitorVehicleImage,
  });

  factory Parcel.fromJson(Map<String, dynamic> json) => _$ParcelFromJson(json);
  Map<String, dynamic> toJson() => _$ParcelToJson(this);
}
