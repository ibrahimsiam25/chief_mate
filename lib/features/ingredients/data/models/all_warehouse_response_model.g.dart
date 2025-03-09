// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_warehouse_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWarehouseResponseModel _$AllWarehouseResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllWarehouseResponseModel(
      code: (json['code'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WarehouseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllWarehouseResponseModelToJson(
        AllWarehouseResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
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
