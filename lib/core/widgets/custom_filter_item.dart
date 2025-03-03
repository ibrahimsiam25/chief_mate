import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilterItem extends StatelessWidget {
  const CustomFilterItem({
    super.key,
    required this.filterName,
    required this.isSelected,
  });
  final String filterName;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.kColor4 : AppColors.kColor5,
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
      ),
      child: Text(
        filterName,
        style: AppStyles.textStyle16.copyWith(
          color: isSelected ? AppColors.kColor1 : AppColors.kColor4,
        ),
      ),
    );
  }
}
