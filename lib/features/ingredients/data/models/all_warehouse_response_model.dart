import 'package:json_annotation/json_annotation.dart';
part 'all_warehouse_response_model.g.dart';

@JsonSerializable()
class AllWarehouseResponseModel {
  int? code;
  List<WarehouseData>? data;

  AllWarehouseResponseModel({this.code, this.data});

  factory AllWarehouseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllWarehouseResponseModelFromJson(json);
}

@JsonSerializable()
class WarehouseData {
  int? id;
  String? title;
  String? type;

  WarehouseData({this.id, this.title, this.type});

  factory WarehouseData.fromJson(Map<String, dynamic> json) =>
      _$WarehouseDataFromJson(json);
}
