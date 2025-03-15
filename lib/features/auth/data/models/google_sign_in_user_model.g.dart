// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_sign_in_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleSignInUserModel _$GoogleSignInUserModelFromJson(
        Map<String, dynamic> json) =>
    GoogleSignInUserModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      idToken: json['idToken'] as String?,
    );

Map<String, dynamic> _$GoogleSignInUserModelToJson(
        GoogleSignInUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'idToken': instance.idToken,
    };
