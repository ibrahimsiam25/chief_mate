import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ShowModelButtomSheetItem extends StatelessWidget {
  const ShowModelButtomSheetItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
  });
  final String title;
  final String subtitle;
  final String leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.textStyle16.copyWith(
              color: AppColors.kColor1,
              fontSize: 13.sp,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kColor3,
          ),
        ),
        leading: SvgPicture.asset(
          leadingIcon,
          color: AppColors.kColor1,
        ),
        trailing: SvgPicture.asset(
          AppIcons.arrowRirht,
          height: 11.h,
          color: AppColors.kColor3,
        ),
      ),
    );
  }
}
