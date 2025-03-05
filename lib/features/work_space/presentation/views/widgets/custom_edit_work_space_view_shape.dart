import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEditWorkSpaceViewShape extends StatelessWidget {
  const CustomEditWorkSpaceViewShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      alignment: Alignment.bottomLeft,
      height: 160.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color( 0xffFF2D5E),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
       "*********",
        style: AppStyles.textStyle32,
      ),
    );
  }
}
