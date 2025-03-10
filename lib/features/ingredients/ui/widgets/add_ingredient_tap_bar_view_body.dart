import 'dart:io';

import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_dropdown_button.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../data/models/all_warehouse_response_model.dart';

class AddIngredientTapBarViewBody extends StatelessWidget {
  const AddIngredientTapBarViewBody(
      {super.key, required this.allWarehouseResponseModel, required this.typeOfIngredient, required this.name, required this.description,  required this.quantity, required this.unit, required this.formKey, required this.autovalidateMode});
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
    return  SingleChildScrollView(

      child: Form(
        key: formKey,
            autovalidateMode: autovalidateMode,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Тип ингредиента",
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
            SizedBox(height: 8.h),
            CustomDropdownButton(
              items: allWarehouseResponseModel.data!
                  .map((e) => e.title!)
                  .toList(),
              initialValue: allWarehouseResponseModel.data!.first.title!,
              onSelected: (selectedValue) {
                typeOfIngredient(selectedValue);
              },
            ),
              SizedBox(height: 20.h),
            //name
            Text(
              'Название',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
            SizedBox(height: 8.h),
               CustomTextFormField(
                  onChanged: name,
                  hintText: "Введите название", 
                  textInputType: TextInputType.multiline,
                  validator: (value) => (value == null || value.isEmpty) ? "Это поле обязательно" : null,
                ),
            SizedBox(height: 20.h),
            //description
            Text(
              'Описание',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
            SizedBox(height: 8.h),
            CustomTextFormField(
              onChanged: description,
              hintText: "Введите описание",
              maxLines: 6,
              textInputType: TextInputType.multiline,
              validator: (value) => (value == null || value.isEmpty) ? "Это поле обязательно" : null,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //unit
                      Text(
                        'Единица измерения',
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.kColor3,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomDropdownButton(
                        items: const ["Литр", "Миллилитр", "Грамм", "Килограмм"],
                        initialValue: "Литр",
                        onSelected: (selectedValue) {
                          unit(selectedValue);
                        },
                      ),
                    ],
                  ),
                ),
                const Expanded(
                    child: SizedBox(
                  width: 1,
                )),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //quantity
                      Text(
                        'Количество',
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.kColor3,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomTextFormField(
                        onChanged: quantity,
                        hintText: "Введите количество",
                        textInputType: TextInputType.number,
                        validator: (value) => (value == null || value.isEmpty) ? "Это поле обязательно" : null,
                      ),
                    ],
                  ),
                ),
               
              ],
            ),
              SizedBox(height: 120.h),
          ],
        ),
      ),
    );
  }
}
