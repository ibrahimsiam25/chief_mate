import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_recipe_view_drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddRecipeTextFields extends StatelessWidget {
  const CustomAddRecipeTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Название',
          style: AppStyles.textStyle16.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        SizedBox(height: 8.h),
        const CustomTextField(),
        SizedBox(height: 20.h),
        Text(
          'Описание',
          style: AppStyles.textStyle16.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        SizedBox(height: 8.h),
        const CustomTextField(
          maxLines: 6,
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
                  Text(
                    'Единица измерения',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.kColor3,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const AddRecipeViewDropDownButton(),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(
                width: 1,
              ),
            ),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Количество',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.kColor3,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomTextField(),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
