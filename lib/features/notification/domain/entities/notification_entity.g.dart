// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationAdapter extends TypeAdapter<_$NotificationImpl> {
  @override
  final int typeId = 0;

  @override
  _$NotificationImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NotificationImpl(
      jeabId: fields[0] as String,
      token: fields[1] as String,
      notification: fields[2] as NotificationPayload,
      data: fields[3] as NotificationData,
    );
  }

  @override
  void write(BinaryWriter writer, _$NotificationImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.jeabId)
      ..writeByte(1)
      ..write(obj.token)
      ..writeByte(2)
      ..write(obj.notification)
      ..writeByte(3)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NotificationPayloadAdapter
    extends TypeAdapter<_$NotificationPayloadImpl> {
  @override
  final int typeId = 1;

  @override
  _$NotificationPayloadImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NotificationPayloadImpl(
      title: fields[0] as String,
      body: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NotificationPayloadImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.body);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationPayloadAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NotificationDataAdapter extends TypeAdapter<_$NotificationDataImpl> {
  @override
  final int typeId = 2;

  @override
  _$NotificationDataImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NotificationDataImpl(
      isUnread: fields[0] as bool,
      menu: fields[1] as String,
      titleHeaderKey: fields[2] as String,
      id: fields[3] as String,
      dateTime: fields[4] as String,
      jeabId: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NotificationDataImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.isUnread)
      ..writeByte(1)
      ..write(obj.menu)
      ..writeByte(2)
      ..write(obj.titleHeaderKey)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.dateTime)
      ..writeByte(5)
      ..write(obj.jeabId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      jeabId: json['jeab_id'] as String,
      token: json['token'] as String,
      notification: NotificationPayload.fromJson(
          json['notification'] as Map<String, dynamic>),
      data: NotificationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'jeab_id': instance.jeabId,
      'token': instance.token,
      'notification': instance.notification,
      'data': instance.data,
    };

_$NotificationPayloadImpl _$$NotificationPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPayloadImpl(
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$NotificationPayloadImplToJson(
        _$NotificationPayloadImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      isUnread: json['is_unread'] as bool,
      menu: json['menu'] as String,
      titleHeaderKey: json['title_header_key'] as String,
      id: json['id'] as String,
      dateTime: json['date_time'] as String,
      jeabId: json['jeab_id'] as String,
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'is_unread': instance.isUnread,
      'menu': instance.menu,
      'title_header_key': instance.titleHeaderKey,
      'id': instance.id,
      'date_time': instance.dateTime,
      'jeab_id': instance.jeabId,
    };
