import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class IngredientDetailsSection extends StatelessWidget {
  const IngredientDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ингредиент 1',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Очень популярный продукт французской кухни, подаётся на завтрак к кофе для взрослых или к какао для детей.',
          style: AppStyles.textStyle16,
        ),
        SizedBox(height: 8.h),
        Text(
          'Дата создания: 25 Февраля в 12:00',
          style: AppStyles.textStyle16.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.details),
            SizedBox(width: 8.h),
            Text(
              '4 килограмма',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            )
          ],
        )
      ],
    );
  }
}
