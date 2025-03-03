import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTaskViewTextFields extends StatelessWidget {
  const AddTaskViewTextFields({super.key});

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
      ],
    );
  }
}
