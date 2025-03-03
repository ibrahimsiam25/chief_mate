import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddNewStepButton extends StatelessWidget {
  const AddNewStepButton(
      {super.key,
      required this.icon,
      required this.text,
      this.onTap,
      this.iconHeight});
  final String icon;
  final String text;
  final void Function()? onTap;
  final double? iconHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.kColor4,
          borderRadius: BorderRadius.all(
            Radius.circular(24.r),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: iconHeight ?? 12.h,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
