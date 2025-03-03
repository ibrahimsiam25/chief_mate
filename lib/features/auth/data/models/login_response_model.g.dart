// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      message: json['message'] as String?,
      userDataAndToken: (json['data'] as List<dynamic>?)
          ?.map((e) => UserDataAndToken.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userDataAndToken,
      'status': instance.status,
      'code': instance.code,
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
      rule: json['rule'] as String?,
      team: json['team'] as String?,
      workSpace: json['workspace'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'rule': instance.rule,
      'team': instance.team,
      'workspace': instance.workSpace,
      'avatar': instance.avatar,
    };
