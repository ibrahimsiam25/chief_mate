import 'package:json_annotation/json_annotation.dart';
part 'create_work_space_request_model.g.dart';

@JsonSerializable()
class CreateWorkSpaceRequestModel {
  String? name;
  @JsonKey(name: "color_id")
  String? colorId;
  CreateWorkSpaceRequestModel({
    required this.name,
 required   this.colorId,
  });

 Map<String, dynamic> toJson() => _$CreateWorkSpaceRequestModelToJson(this);
}
