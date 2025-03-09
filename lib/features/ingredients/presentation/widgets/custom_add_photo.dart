import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddPhoto extends StatelessWidget {
  const CustomAddPhoto({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 250.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        color: AppColors.kColor5,
      ),
      child: const Icon(
        Icons.add,
        color: AppColors.kColor7,
        size: 60,
      ),
    );
  }
}
