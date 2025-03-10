import 'dart:io';

import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_view_body.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_constants.dart';
import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientView extends StatefulWidget {
  const AddIngredientView({super.key, required this.allWarehouseResponseModel});

  static const String routeName = "/AddIngredientView";
  final AllWarehouseResponseModel allWarehouseResponseModel;

  @override
  State<AddIngredientView> createState() => _AddIngredientViewState();
}

class _AddIngredientViewState extends State<AddIngredientView>
    with SingleTickerProviderStateMixin {
  final _formKeyIngredient = GlobalKey<FormState>();
  final _formKeyEquipment = GlobalKey<FormState>();

  AutovalidateMode _autovalidateModeIngredient = AutovalidateMode.disabled;
  AutovalidateMode _autovalidateModeEquipment = AutovalidateMode.disabled;

  late TabController _tabController;
  late String _type;
  late String _name;
  late String _description;
  late File _image;
  late String _quantity;
  String _unit = "Литр";

  List<WarehouseData>? ingredientData;
  List<WarehouseData>? equipmentData;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_onTabChanged);

    ingredientData = widget.allWarehouseResponseModel.data
        ?.where((element) => element.type == ApiConstants.ingredient)
        .toList();
    equipmentData = widget.allWarehouseResponseModel.data
        ?.where((element) => element.type == ApiConstants.equipment)
        .toList();

    _updateTypeBasedOnTab(_tabController.index);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    _updateTypeBasedOnTab(_tabController.index);
  }

  void _updateTypeBasedOnTab(int tabIndex) {
    setState(() {
      if (tabIndex == 0) {
        _type = ingredientData?.isNotEmpty == true
            ? ingredientData!.first.title ?? ''
            : '';
      } else {
        _type = equipmentData?.isNotEmpty == true
            ? equipmentData!.first.title ?? ''
            : '';
      }
    });
  }

  void _validateForm() {
    int currentTabIndex = _tabController.index;
    if (currentTabIndex == 0) {
      if (_formKeyIngredient.currentState!.validate()) {
        _formKeyIngredient.currentState!.save();
        _unit = _mapUnit(_unit);
        print("typeOfIngredient: $_type");
        print("name: $_name");
        print("description: $_description");
        print("quantity: $_quantity");
        print("unit: $_unit");
      } else {
        setState(() {
          _autovalidateModeIngredient = AutovalidateMode.always;
        });
      }
    } else {
      if (_formKeyEquipment.currentState!.validate()) {
        _formKeyEquipment.currentState!.save();
        print("typeOfEquipment: $_type");
        print("name: $_name");
        print("description: $_description");
        print("quantity: $_quantity");
      } else {
        setState(() {
          _autovalidateModeEquipment = AutovalidateMode.always;
        });
      }
    }
  }

  String _mapUnit(String unit) {
    switch (unit) {
      case "Литр":
        return "l";
      case "Миллилитр":
        return "ml";
      case "Грамм":
        return "g";
      case "Килограмм":
        return "kg";
      default:
        return unit;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(buttonName: 'Добавить', onTap: _validateForm),
      ),
      body: AddIngredientViewBody(
        tabController: _tabController,
        formKeyIngredient: _formKeyIngredient,
        autovalidateModeIngredient: _autovalidateModeIngredient,
        formKeyEquipment: _formKeyEquipment,
        autovalidateModeEquipment: _autovalidateModeEquipment,
        typeOfIngredient: (value) => _type = value!,
        name: (value) => _name = value!,
        description: (value) => _description = value!,
        image: (value) => _image = value!,
        quantity: (value) => _quantity = value!,
        unit: (value) => _unit = value!,
        ingredientData: ingredientData ?? [],
        equipmentData: equipmentData ?? [],
      ),
    );
  }
}
