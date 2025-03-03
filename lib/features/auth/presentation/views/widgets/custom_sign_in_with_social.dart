import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomSignInWithSocial extends StatelessWidget {
  const CustomSignInWithSocial(
      {super.key,
      required this.onTap,
      required this.buttonName,
      required this.buttonIcon});
  final void Function() onTap;
  final String buttonName;
  final String buttonIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kColor4,
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              buttonIcon,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(width: 8.sp),
            Text(
              buttonName,
              style: AppStyles.textStyle20.copyWith(
                color: AppColors.kColor1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
