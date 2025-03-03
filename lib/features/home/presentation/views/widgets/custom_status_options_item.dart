import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomStatusOptionsItem extends StatelessWidget {
  const CustomStatusOptionsItem(
      {super.key, required this.optionName, required this.optionNum});

  final String optionName;
  final String optionNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.kColor5,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            optionName,
            style: AppStyles.textStyle20.copyWith(
              color: AppColors.kColor3,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            optionNum,
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 40.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.kColor11,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: SvgPicture.asset(
              AppIcons.arrowRirht,
              color: AppColors.kColor4,
            ),
          ),
        ],
      ),
    );
  }
}
