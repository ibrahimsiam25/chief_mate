import 'package:json_annotation/json_annotation.dart';

part 'google_sign_in_user_model.g.dart';

@JsonSerializable()
class GoogleSignInUserModel {
  final String? name;
  final String? email;
  final String? avatar;
  final String? idToken;

  GoogleSignInUserModel({this.name, this.email, this.avatar, this.idToken});

  factory GoogleSignInUserModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleSignInUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleSignInUserModelToJson(this);
}
