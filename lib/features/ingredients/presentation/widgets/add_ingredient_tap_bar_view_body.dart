import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/ingredients/presentation/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddIngredientTapBarViewBody extends StatelessWidget {
  const AddIngredientTapBarViewBody({super.key});

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
        CustomTextField(),
        SizedBox(height: 20.h),
        Text(
          'Описание',
          style: AppStyles.textStyle16.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        SizedBox(height: 8.h),
        CustomTextField(
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
                 CustomDropdownButton(
  items: ['Граммы', 'Килограммы', 'Литры'],
  initialValue: 'Граммы',
  onSelected: (selectedValue) {
    print("Selected value: $selectedValue");
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
