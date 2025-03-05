
import 'dart:io';

class UpdateUserProfileRequestModel {
  final String? name;
  final String? email;
  final String? phone;
  final File? avatar;
  final String? password;

  UpdateUserProfileRequestModel({
    this.name,
    this.email,
    this.phone,
    this.avatar,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }
}
