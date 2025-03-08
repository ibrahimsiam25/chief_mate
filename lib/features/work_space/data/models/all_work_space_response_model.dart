import 'package:json_annotation/json_annotation.dart';

part 'all_work_space_response_model.g.dart';

@JsonSerializable()
class AllWorkSpaceResponseModel {
  int? code;
  List<WorkspaceModel>? data;

  AllWorkSpaceResponseModel({this.code, this.data});

  factory AllWorkSpaceResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllWorkSpaceResponseModelFromJson(json);
}

@JsonSerializable()
class WorkspaceModel {
  int? id;
  String? name;
  String? color;
  @JsonKey(name: 'color_code')
  String? colorCode;

  WorkspaceModel({this.id, this.name, this.color, this.colorCode});

  factory WorkspaceModel.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceModelFromJson(json);
}
