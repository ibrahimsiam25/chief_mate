import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chief_mate/core/widgets/custom_app_bar.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/custom_dropdown_button.dart';

import '../../../../core/widgets/custom_text_form_field.dart';


class AddIngredientAndEquipmentViewBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  final Function(String?) onChanged;
  final Function(String) onSelected;

  const AddIngredientAndEquipmentViewBody({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
    required this.onChanged,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              CustomAppBar(
                title: "Добавить категорию",
                onBack: () =>    GoRouter.of(context).pop()
              ),
              const SizedBox(height: 30),
              _buildLabel("Добавить заголовок"),
              SizedBox(height: 8.h),
              CustomTextFormField(
                onChanged: onChanged,
                hintText: "Электронная почта",
                textInputType: TextInputType.multiline,
                validator: (value) => (value == null || value.isEmpty) ? "Это поле обязательно" : null,
              ),
              const SizedBox(height: 10),
              _buildLabel("Выберите тип"),
              SizedBox(height: 8.h),
              CustomDropdownButton(
                items: const ['ингредиент', "оборудование"],
                initialValue: 'ингредиент',
                onSelected: onSelected,
              ),
            ],
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
