import 'dart:io';

import 'package:chief_mate/core/networking/api_constants.dart';
import 'package:chief_mate/features/ingredients/data/models/ingredient_response_model.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/add_equipment_tap_bar_view_body.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_tap_bar_view_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientTapBarView extends StatelessWidget {
  const AddIngredientTapBarView({
    super.key,
    required this.tabController,  required this.typeOfIngredient, required this.name, required this.description, required this.quantity, required this.unit, required this.formKeyIngredient, required this.autovalidateModeIngredient, required this.formKeyEquipment, required this.autovalidateModeEquipment, required this.ingredientData, required this.equipmentData,
  });

final TabController tabController;
final List<WarehouseData> ingredientData;
final List<WarehouseData> equipmentData;
   final Function(String?) typeOfIngredient;
   final Function(String?) name;
   final Function(String?) description;
   final Function(String?) quantity;
   final Function(String?) unit;
    final GlobalKey<FormState> formKeyIngredient;

  final AutovalidateMode autovalidateModeIngredient;
  final GlobalKey<FormState> formKeyEquipment;
  final AutovalidateMode autovalidateModeEquipment;
  @override
  Widget build(BuildContext context) {
       

    return TabBarView(
        clipBehavior: Clip.none,
        controller: tabController,
        children:  [
          AddIngredientTapBarViewBody(
            allWarehouseResponseModel: ingredientData,
            typeOfIngredient: typeOfIngredient,
            name: name,
            description: description,
            quantity: quantity,
            unit: unit,
            formKey: formKeyIngredient,
            autovalidateMode: autovalidateModeIngredient
          ),
         AddWEquipmentTapBarViewBody(
            allWarehouseResponseModel: equipmentData,
            typeOfIngredient: typeOfIngredient,
            name: name,
            description: description,
            quantity: quantity,
            unit: unit,
            formKey: formKeyEquipment,
            autovalidateMode: autovalidateModeEquipment
          ),
        
        ]);
  }
}
