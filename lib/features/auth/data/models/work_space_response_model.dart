import 'package:json_annotation/json_annotation.dart';
part 'work_space_response_model.g.dart';



@JsonSerializable()
class WorkSpaceResponseModel {
  int? code;
  String? message;
  WorkspaceData? data;

  WorkSpaceResponseModel({this.code, this.message, this.data});

  factory WorkSpaceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WorkSpaceResponseModelFromJson(json);


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
