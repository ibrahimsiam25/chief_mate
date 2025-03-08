import 'dart:io';

import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/images.dart';
import 'package:chief_mate/core/constants/app_constants.dart';

import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_avatar_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../../../core/routes/routes_import.dart';

class CustomHomeViewInfo extends StatelessWidget {
  const CustomHomeViewInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(CalenderView.routeName);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Сегодня, 25 Февраля',
                    style: AppStyles.textStyle20,
                  ),
                  SizedBox(width: 5.w),
                  SvgPicture.asset(
                    AppIcons.arrowDown,
                    width: 20.w,
                    height: 20.h,
                    color: AppColors.kColor10,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(ProfileView.routeName);
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.kColor5,
                  radius: 18.r,
                  backgroundImage:
                   AssetImage(AppImages.avatar),
                ),
              ),
            ],
          ),
        ),
        Text(
          '12 заданий',
          style: TextStyle(
            fontSize: 48.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kColor2,
          ),
        ),
        Row(
          children: [
            SvgPicture.asset(AppIcons.time),
            SizedBox(width: 8.w),
            Text(
              '6 ч 30 мин',
              style: AppStyles.textStyle16.copyWith(
                color: AppColors.kColor10,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AddStatusView.routeName);
          },
          child: const CustomAvatarProfile(),
        ),
      ],
    );
  }
}
