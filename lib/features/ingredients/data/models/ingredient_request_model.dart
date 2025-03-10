import 'dart:io';

class IngredientRequestModel {
  String? name;
  File? cover;
  String? description;
  String? unit;
  String? quantity;
  String? warehouseId;

  IngredientRequestModel({
    this.name,
    this.cover,
    this.description,
    this.unit,
    this.quantity,
    this.warehouseId,
  });

  factory IngredientRequestModel.fromJson(Map<String, dynamic> json) {
    return IngredientRequestModel(
      name: json['name'] as String?,
      cover: json['cover'] != null ? File(json['cover']) : null,
      description: json['description'] as String?,
      unit: json['unit'] as String?,
      quantity: json['quantity'] as String?,
      warehouseId: json['warehouseId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'cover': cover?.path, 
      'description': description,
      'unit': unit,
      'quantity': quantity,
      'warehouseId': warehouseId,
    };
  }
}
