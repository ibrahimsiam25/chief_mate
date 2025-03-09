// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarehouseResponseModel _$WarehouseResponseModelFromJson(
        Map<String, dynamic> json) =>
    WarehouseResponseModel(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WarehouseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WarehouseResponseModelToJson(
        WarehouseResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

WarehouseData _$WarehouseDataFromJson(Map<String, dynamic> json) =>
    WarehouseData(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$WarehouseDataToJson(WarehouseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
    };
