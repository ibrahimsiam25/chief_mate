import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructionButton extends StatelessWidget {
  const InstructionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: AppColors.kColor4,
      ),
      child: Text(
        'Понятно',
        style: AppStyles.textStyle16.copyWith(
          color: AppColors.kColor1,
        ),
      ),
    );
  }
}
