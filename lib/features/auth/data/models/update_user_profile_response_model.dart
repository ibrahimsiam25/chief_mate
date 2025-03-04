import 'package:json_annotation/json_annotation.dart';

part 'update_user_profile_response_model.g.dart';

@JsonSerializable()
class UpdateUserProfileResponseModel {
  int? code;
  @JsonKey(name: 'data')
  UserData? userData;

  UpdateUserProfileResponseModel({this.code, this.userData});

  factory UpdateUserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileResponseModelFromJson(json);

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
