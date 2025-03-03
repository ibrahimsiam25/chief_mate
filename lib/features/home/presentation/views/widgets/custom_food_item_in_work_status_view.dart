import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomFoodItemInWorkStatusView extends StatelessWidget {
  const CustomFoodItemInWorkStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://gobargingwp-s3.s3.eu-west-1.amazonaws.com/wp-content/uploads/2022/08/Top-Italian-Dishes-Fettuccine-al-Pomodoro.jpg';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.kColor5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: CachedNetworkImage(
              imageUrl: testImage,
              height: 80.h,
              width: 80.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Крем-суп из тыквы с зеленью',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: AppStyles.textStyle20.copyWith(
                    color: AppColors.kColor4,
                  ),
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.circle),
                    SizedBox(width: 8.w),
                    Text(
                      '30 мин',
                      style: AppStyles.textStyle16.copyWith(
                        color: AppColors.kColor3,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SvgPicture.asset(AppIcons.parts),
                    SizedBox(width: 8.w),
                    Text(
                      '2 порции',
                      style: AppStyles.textStyle16.copyWith(
                        color: AppColors.kColor3,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    SvgPicture.asset(AppIcons.upArrows),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
