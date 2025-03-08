import 'package:json_annotation/json_annotation.dart';
part 'deleted_work_space_response_model.g.dart';

@JsonSerializable()
class DeletedWorkSpaceResponseModel {
   String message;
   int code;
DeletedWorkSpaceResponseModel({required this.message, required this.code});

  factory DeletedWorkSpaceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeletedWorkSpaceResponseModelFromJson(json);
}
