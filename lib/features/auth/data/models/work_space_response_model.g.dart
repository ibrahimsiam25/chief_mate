// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_space_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkSpaceResponseModel _$WorkSpaceResponseModelFromJson(
        Map<String, dynamic> json) =>
    WorkSpaceResponseModel(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : WorkspaceData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkSpaceResponseModelToJson(
        WorkSpaceResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

WorkspaceData _$WorkspaceDataFromJson(Map<String, dynamic> json) =>
    WorkspaceData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      color: json['color'] as String?,
      colorCode: json['color_code'] as String?,
    );

Map<String, dynamic> _$WorkspaceDataToJson(WorkspaceData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'color_code': instance.colorCode,
    };
