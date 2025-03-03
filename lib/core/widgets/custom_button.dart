import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.buttonName,
    this.color,
  });
  final void Function() onTap;
  final String buttonName;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color ?? AppColors.kColor2,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kColor1,
          ),
        ),
      ),
    );
  }
}
