import 'package:json_annotation/json_annotation.dart';
part 'create_work_space_response_model.g.dart';



@JsonSerializable()
class CreateWorkSpaceResponseModel {
  int? code;
  String? message;
  WorkspaceData? data;

  CreateWorkSpaceResponseModel({this.code, this.message, this.data});

  factory CreateWorkSpaceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateWorkSpaceResponseModelFromJson(json);


}

@JsonSerializable()
class WorkspaceData {
  int? id;
  String? name;
  String? color;
  @JsonKey(name: 'color_code')
  String? colorCode;

  WorkspaceData({this.id, this.name, this.color, this.colorCode});

  factory WorkspaceData.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceDataFromJson(json);

}
