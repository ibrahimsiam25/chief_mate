// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerificationResponseModel _$OtpVerificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    OtpVerificationResponseModel(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      userDataAndToken: json['userDataAndToken'] == null
          ? null
          : UserDataAndToken.fromJson(
              json['userDataAndToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtpVerificationResponseModelToJson(
        OtpVerificationResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'userDataAndToken': instance.userDataAndToken,
    };

UserDataAndToken _$UserDataAndTokenFromJson(Map<String, dynamic> json) =>
    UserDataAndToken(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataAndTokenToJson(UserDataAndToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'userData': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
    };
