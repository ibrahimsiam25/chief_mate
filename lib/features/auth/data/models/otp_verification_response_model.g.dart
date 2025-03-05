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
      userDataAndToken: (json['data'] as List<dynamic>?)
          ?.map((e) => UserDataAndToken.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OtpVerificationResponseModelToJson(
        OtpVerificationResponseModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.userDataAndToken,
    };

UserDataAndToken _$UserDataAndTokenFromJson(Map<String, dynamic> json) =>
    UserDataAndToken(
      accessToken: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      userData: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataAndTokenToJson(UserDataAndToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'user': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      avatar: json['avatar'] as String?,
      verified: json['verified'] as bool?,
      provider: json['provider'] as String?,
      providerId: json['provider_id'] as String?,
      rules: json['rules'] as String?,
      workspaceId: json['workspace_id'] as String?,
      sectionId: json['section_id'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'verified': instance.verified,
      'avatar': instance.avatar,
      'provider': instance.provider,
      'rules': instance.rules,
      'provider_id': instance.providerId,
      'workspace_id': instance.workspaceId,
      'section_id': instance.sectionId,
    };
