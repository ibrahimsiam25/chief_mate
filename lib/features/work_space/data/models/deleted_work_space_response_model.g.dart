// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleted_work_space_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeletedWorkSpaceResponseModel _$DeletedWorkSpaceResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeletedWorkSpaceResponseModel(
      message: json['message'] as String,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$DeletedWorkSpaceResponseModelToJson(
        DeletedWorkSpaceResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
