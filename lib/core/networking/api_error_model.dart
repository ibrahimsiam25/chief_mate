import 'package:chief_mate/core/helper/extensions.dart';
import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final Map<String, dynamic>? errors;
  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
  String getAllMessages() {
    if(errors.isNullOrEmpty()){
      return message??"Произошла неизвестная ошибка";
    }  final nestedErrors = errors!["errors"];
  if (nestedErrors is Map<String, dynamic>) {
    return nestedErrors.entries.map((entry) {
      final value = entry.value;
      return value is List<String> ? value.join(", ") : value.toString();
    }).join("\n");
  }


    return "Произошла неизвестная ошибка";
  }

  

}
