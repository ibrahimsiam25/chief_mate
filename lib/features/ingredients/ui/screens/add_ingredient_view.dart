import 'dart:io';

import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_view_body.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentation/views/widgets/bottom_nav_bar_controller.dart';
import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientView extends StatefulWidget {
  const AddIngredientView({super.key, required this.allWarehouseResponseModel});
static const String routeName = "/AddIngredientView";
final AllWarehouseResponseModel allWarehouseResponseModel;

  @override
  State<AddIngredientView> createState() => _AddIngredientViewState();
}

class _AddIngredientViewState extends State<AddIngredientView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
 late String typeOfIngredient;
 late String name;
 late String description;
 late File image;
 late String quantity;
 late String unit;
   void initState() {
    super.initState();
    if (widget.allWarehouseResponseModel.data != null &&
        widget.allWarehouseResponseModel.data!.isNotEmpty) {
      typeOfIngredient = widget.allWarehouseResponseModel.data!.first.title!;
    } else {
      typeOfIngredient = ""; 
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Добавить',
          onTap: () {
 if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
print("typeOfIngredient: $typeOfIngredient");
print("name: $name");
print("description: $description");
print("quantity: $quantity");
print("unit: $unit");
      // context
      //     .read<CreateWarehouseCubit>()
      //     .createWarehouse(title: _title, type: _type);
    } else {
      setState(() {
        _autovalidateMode = AutovalidateMode.always;
      });
    }
          },
        ),
      ),
      body: AddIngredientViewBody(
        formKey: _formKey,
        autovalidateMode: _autovalidateMode,
        typeOfIngredient: (value) {
          typeOfIngredient = value!;
        },
        name: (value) {
          name = value!;
        },
        description: (value) {
          description = value!;
        },
        image: (value) {
          image = value!;
        },
        quantity: (value) {
          quantity = value!;
        },
        unit: (value) {
          unit = value!;
        },
        allWarehouseResponseModel: widget.allWarehouseResponseModel,
      ),
    );
  }
}
