import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomContainueButton extends StatelessWidget {
  const CustomContainueButton({super.key, required this.onTap});
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.kColor4,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Продолжить',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor1,
              ),
            ),
            SizedBox(width: 12.w),
            SvgPicture.asset(
              AppIcons.arrowRirht,
              height: 10.h,
              color: AppColors.kColor1,
            ),
          ],
        ),
      ),
    );
  }
}
