import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomProfileItem2 extends StatelessWidget {
  const CustomProfileItem2(
      {super.key, required this.title, this.onTap, required this.subTitle});
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyles.textStyle16.copyWith(
                  color: AppColors.kColor3,
                ),
              ),
              Row(
                children: [
                  Text(
                    subTitle,
                    style: AppStyles.textStyle16,
                  ),
                  SizedBox(width: 15.w),
                  SvgPicture.asset(
                    AppIcons.arrowRirht,
                    height: 10.h,
                    width: 10.w,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 5.h),
          const Divider(),
        ],
      ),
    );
  }
}
