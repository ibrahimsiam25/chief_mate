import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FoodItemDetailsSection extends StatelessWidget {
  const FoodItemDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Круассан',
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
            SvgPicture.asset(AppIcons.time),
            SizedBox(width: 8.w),
            Text(
              '12 ч 30 мин',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(AppIcons.parts),
            SizedBox(width: 8.w),
            Text(
              '12 ч 30 мин',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
            SizedBox(width: 12.w),
            SvgPicture.asset(AppIcons.upArrows),
            SizedBox(width: 8.w),
            Text(
              'Высокий приоритет',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
