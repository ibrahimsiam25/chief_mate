import 'dart:io';

import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_tap_bar_view_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientTapBarView extends StatelessWidget {
  const AddIngredientTapBarView({
    super.key,
    required this.tabController, required this.allWarehouseResponseModel, required this.typeOfIngredient, required this.name, required this.description, required this.quantity, required this.unit, required this.formKey, required this.autovalidateMode,
  });

final TabController tabController;
final AllWarehouseResponseModel allWarehouseResponseModel;
   final Function(String?) typeOfIngredient;
   final Function(String?) name;
   final Function(String?) description;
   final Function(String?) quantity;
   final Function(String?) unit;
    final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
        clipBehavior: Clip.none,
        controller: tabController,
        children:  [
          AddIngredientTapBarViewBody(
            allWarehouseResponseModel: allWarehouseResponseModel,
            typeOfIngredient: typeOfIngredient,
            name: name,
            description: description,
            quantity: quantity,
            unit: unit,
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
          Text(
            'Working on it ......',
            textAlign: TextAlign.center,
          ),
        ]);
  }
}
