// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerificationRequestModel _$OtpVerificationRequestModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerificationRequestModel(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpVerificationRequestModelToJson(
        OtpVerificationRequestModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
