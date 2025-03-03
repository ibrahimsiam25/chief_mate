import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddRecipeButton extends StatelessWidget {
  const CustomAddRecipeButton(
      {super.key,
      required this.text,
      this.textColor,
      this.buttonColor,
      required this.onTap});
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.kColor4,
          borderRadius: BorderRadius.all(Radius.circular(24.r)),
        ),
        child: Text(
          text,
          style: AppStyles.textStyle16.copyWith(
            color: textColor ?? AppColors.kColor1,
          ),
        ),
      ),
    );
  }
}
