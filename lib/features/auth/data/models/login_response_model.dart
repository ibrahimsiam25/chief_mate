import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<UserDataAndToken>? userDataAndToken;
  bool? status;
  int? code;

  LoginResponseModel({this.message, this.userDataAndToken, this.status, this.code});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserDataAndToken {
  @JsonKey(name: 'access_token')
  String? accessToken;

  @JsonKey(name: 'token_type')
  String? tokenType;

  UserData? userData;

  UserDataAndToken({this.accessToken, this.tokenType, this.userData});

  factory UserDataAndToken.fromJson(Map<String, dynamic> json) =>
      _$UserDataAndTokenFromJson(json);
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
  UserData(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.rule,
      this.team,
      this.workSpace,
      this.avatar});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
