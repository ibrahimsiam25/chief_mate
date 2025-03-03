import 'package:json_annotation/json_annotation.dart';
part 'otp_verification_request_model.g.dart';

@JsonSerializable()
class OtpVerificationRequestModel {
  final String email;
  final String code;

  OtpVerificationRequestModel({required this.email, required this.code});

  Map<String, dynamic> toJson() => _$OtpVerificationRequestModelToJson(this);
}
