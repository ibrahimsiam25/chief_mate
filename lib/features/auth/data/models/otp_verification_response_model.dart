import 'package:json_annotation/json_annotation.dart';
part 'otp_verification_response_model.g.dart';

@JsonSerializable()
class OtpVerificationResponseModel {
  final int code;
  final String message;
  @JsonKey(name: 'data')
  final List<UserDataAndToken>? userDataAndToken;

  OtpVerificationResponseModel(
      {required this.code,
      required this.message,
      required this.userDataAndToken});

  factory OtpVerificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationResponseModelFromJson(json);
}

@JsonSerializable()
class UserDataAndToken {
  @JsonKey(name: 'access_token')
  String? accessToken;

  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'user')
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
  bool? verified;
  String? avatar;
  String? provider;
  String? rules;
  @JsonKey(name: 'provider_id')
  String? providerId;
  @JsonKey(name: 'workspace_id')
  String? workspaceId;
  @JsonKey(name: 'section_id')
  String? sectionId;
  UserData(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.avatar,
      this.verified,
      this.provider,
      this.providerId,
      this.rules,
      this.workspaceId,
      this.sectionId});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
