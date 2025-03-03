import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class RecipeViewAppBarPopMenu extends StatelessWidget {
  const RecipeViewAppBarPopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.kColor5,
      constraints: BoxConstraints(
          minWidth: 150.w, maxWidth: 280.w, minHeight: 121.h, maxHeight: 121.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      icon: SvgPicture.asset(
        AppIcons.more,
        height: 24.h,
        width: 24.w,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: '/edit',
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'вариан 1',
                  style: AppStyles.textStyle16,
                ),
              ],
            ),
          ),
          PopupMenuItem(
            height: 10,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            value: '/divider',
            child: const Divider(),
          ),
          PopupMenuItem(
            value: '/delete',
            onTap: () {},
            child: Row(
              children: [
                Text(
                  'вариан 2',
                  style: AppStyles.textStyle16.copyWith(),
                ),
              ],
            ),
          ),
        ];
      },
    );
  }
}
