import 'package:json_annotation/json_annotation.dart';
part 'work_space_request_model.g.dart';

@JsonSerializable()
class WorkSpaceRequestModel {
  String? name;
  @JsonKey(name: "color_id")
  String? colorId;
  WorkSpaceRequestModel({
    required this.name,
 required   this.colorId,
  });

 Map<String, dynamic> toJson() => _$WorkSpaceRequestModelToJson(this);
}
