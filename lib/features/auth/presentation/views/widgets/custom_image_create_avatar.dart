import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomImageCreateAvatar extends StatelessWidget {
  const CustomImageCreateAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90.r,
      backgroundColor: AppColors.kColor5,
      child: SvgPicture.asset(
        AppIcons.camera,
        color: AppColors.kColor7,
        height: 25.h,
        width: 25.w,
      ),
    );
  }
}
