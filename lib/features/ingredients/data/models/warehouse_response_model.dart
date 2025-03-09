import 'package:json_annotation/json_annotation.dart';
part 'warehouse_response_model.g.dart';

@JsonSerializable()
class WarehouseResponseModel {
  int? code;
  String? message;
  WarehouseData? data;

  WarehouseResponseModel({this.code, this.message, this.data});
  factory WarehouseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WarehouseResponseModelFromJson(json);
}

@JsonSerializable()
class WarehouseData {
  int? id;
  String? title;
  String? type;

  WarehouseData(
    {
      this.id,
      this.title,
      this.type,
    }
      );
  factory WarehouseData.fromJson(Map<String, dynamic> json) =>
      _$WarehouseDataFromJson(json);
}
