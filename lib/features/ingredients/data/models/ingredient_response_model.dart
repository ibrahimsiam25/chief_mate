class IngredientResponseModel {
  int? code;
  String? message;
  IngredientData? data;

  IngredientResponseModel({this.code, this.message, this.data});

  factory IngredientResponseModel.fromJson(Map<String, dynamic> json) {
    return IngredientResponseModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] != null ? IngredientData.fromJson(json['data']) : null,
    );
  }
}

class IngredientData {
  int? id;
  String? name;
  String? cover;
  String? description;
  String? unit;
  String? quantity;

  IngredientData({
    this.id,
    this.name,
    this.cover,
    this.description,
    this.unit,
    this.quantity,
  });

  factory IngredientData.fromJson(Map<String, dynamic> json) {
    return IngredientData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      description: json['description'] as String?,
      unit: json['unit'] as String?,
      quantity: json['quantity'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'cover': cover,
      'description': description,
      'unit': unit,
      'quantity': quantity,
    };
  }
}
