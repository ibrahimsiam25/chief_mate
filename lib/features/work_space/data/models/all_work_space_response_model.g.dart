// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_work_space_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllWorkSpaceResponseModel _$AllWorkSpaceResponseModelFromJson(
        Map<String, dynamic> json) =>
    AllWorkSpaceResponseModel(
      code: (json['code'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WorkspaceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllWorkSpaceResponseModelToJson(
        AllWorkSpaceResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

WorkspaceModel _$WorkspaceModelFromJson(Map<String, dynamic> json) =>
    WorkspaceModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      color: json['color'] as String?,
      colorCode: json['color_code'] as String?,
    );

Map<String, dynamic> _$WorkspaceModelToJson(WorkspaceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'color_code': instance.colorCode,
    };
