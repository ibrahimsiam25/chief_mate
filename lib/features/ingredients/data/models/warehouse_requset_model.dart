import 'package:json_annotation/json_annotation.dart';
part 'warehouse_requset_model.g.dart';
@JsonSerializable()
class WarehouseRequestModel {
  String? title;
  String? type;
  WarehouseRequestModel({this.title, this.type});
  factory WarehouseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WarehouseRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$WarehouseRequestModelToJson(this);
}
