import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTimerRowRecipeView extends StatelessWidget {
  const CustomTimerRowRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Время приготовления',
          style: AppStyles.textStyle16,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: AppColors.kColor5,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            '00:00:00',
            style: AppStyles.textStyle16,
          ),
        )
      ],
    );
  }
}
