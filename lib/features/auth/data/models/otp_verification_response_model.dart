import 'package:json_annotation/json_annotation.dart';
part 'otp_verification_response_model.g.dart';

@JsonSerializable()
class OtpVerificationResponseModel {
  final int code;
  final String message;
  final UserDataAndToken? userDataAndToken;

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
  String? avatar;
  UserData({this.id, this.name, this.email, this.phone, this.avatar});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
