import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.textName, required this.icon});
  final String textName;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      height: 100.h,
      decoration: BoxDecoration(
        color: AppColors.kColor5,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: const Color.fromRGBO(255, 255, 255, 0.15),
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(icon),
          Text(textName, style: AppStyles.textStyle16),
        ],
      ),
    );
  }
}
