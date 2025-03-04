import 'package:json_annotation/json_annotation.dart';
part 'update_user_profile_request_model.g.dart';

@JsonSerializable()
class UpdateUserProfileRequestModel {
  final String name;
  final String email;
  final String phone;
  final String avatar;
  final String password;

 UpdateUserProfileRequestModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.avatar,
    required this.password,
  });
  Map<String, dynamic> toJson() => _$UpdateUserProfileRequestModelToJson(this);
  }