// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserProfileRequestModel _$UpdateUserProfileRequestModelFromJson(
        Map<String, dynamic> json) =>
    UpdateUserProfileRequestModel(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UpdateUserProfileRequestModelToJson(
        UpdateUserProfileRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'password': instance.password,
    };
