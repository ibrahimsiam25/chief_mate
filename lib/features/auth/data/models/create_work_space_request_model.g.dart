// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_work_space_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkSpaceRequestModel _$CreateWorkSpaceRequestModelFromJson(
        Map<String, dynamic> json) =>
    CreateWorkSpaceRequestModel(
      name: json['name'] as String?,
      colorId: json['color_id'] as String?,
    );

Map<String, dynamic> _$CreateWorkSpaceRequestModelToJson(
        CreateWorkSpaceRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color_id': instance.colorId,
    };
