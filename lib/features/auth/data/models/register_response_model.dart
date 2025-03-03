import 'package:json_annotation/json_annotation.dart';
part 'register_response_model.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;

  RegisterResponseModel({this.message, this.userData, this.code});

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? rule;
  String? team;
  @JsonKey(name: 'workspace')
  String? workSpace;
String? avatar;
  UserData({this.id, this.name, this.email, this.phone, this.rule, this.team, this.workSpace, this.avatar});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}