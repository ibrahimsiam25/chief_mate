import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomWorkSpaceItem extends StatelessWidget {
  const CustomWorkSpaceItem(
      {super.key,
      required this.text,
      required this.icon,
      this.onTap,
      this.color});
  final String text;
  final String icon;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        title: Text(
          text,
          style: AppStyles.textStyle20.copyWith(
            color: color ?? AppColors.kColor4,
            fontSize: 18.sp,
          ),
        ),
        leading: SvgPicture.asset(
          icon,
          height: 18.h,
        ),
        trailing: SvgPicture.asset(
          AppIcons.arrowRirht,
          height: 12.h,
        ),
      ),
    );
  }
}
