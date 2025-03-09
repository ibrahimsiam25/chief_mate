import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chief_mate/core/widgets/custom_app_bar.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/custom_dropdown_button.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';


class AddIngredientAndEquipmentView extends StatefulWidget {
  const AddIngredientAndEquipmentView({super.key});
  static const String routeName = "/AddComponentsAndEquipment";

  @override
  State<AddIngredientAndEquipmentView> createState() => _AddIngredientAndEquipmentViewState();
}

class _AddIngredientAndEquipmentViewState extends State<AddIngredientAndEquipmentView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String _selectedValue = 'ингредиент';
  late String _name;

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_name);
      print(_selectedValue);
    } else {
      setState(() {
        _autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Добавить',
          onTap: _onSubmit,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: _autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                CustomAppBar(
                  title: "Добавить категорию",
                  onBack: () => Navigator.pop(context),
                ),
                const SizedBox(height: 30),
                _buildLabel("Добавить заголовок"),
                    SizedBox(height: 8.h),
                CustomTextFormField(
                  onChanged: (value) => _name = value!,
                  hintText: "Электронная почта",
                  textInputType: TextInputType.multiline,
                  validator: (value) => (value == null || value.isEmpty) ? "Это поле обязательно" : null,
                ),
                const SizedBox(height: 10),
                _buildLabel("Выберите тип"),
                SizedBox(height: 8.h),
                CustomDropdownButton(
                  //         'ingredient',   'equipment'    
                  items:const ['ингредиент', "оборудование"],
                  initialValue: 'ингредиент',
                  onSelected: (selected) => _selectedValue = selected,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: AppStyles.textStyle16.copyWith(color: AppColors.kColor3),
    );
  }
}
