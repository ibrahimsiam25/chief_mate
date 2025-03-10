import 'package:json_annotation/json_annotation.dart';
part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel {

  final String email;
final String password;

  RegisterRequestModel({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
