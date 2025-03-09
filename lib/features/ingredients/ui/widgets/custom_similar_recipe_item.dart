import 'package:cached_network_image/cached_network_image.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomSimilarRecipeItem extends StatelessWidget {
  const CustomSimilarRecipeItem({super.key});

  @override
  Widget build(BuildContext context) {
    String testImage =
        'https://insanelygoodrecipes.com/wp-content/uploads/2020/12/Homemade-Borsch-Cabbage-Soup.png';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.kColor5,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: CachedNetworkImage(
              imageUrl: testImage,
              fit: BoxFit.cover,
              width: 147.w,
              height: 147.h,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: 147.w,
            child: Text(
              'Крем-суп из тыквы с зеленью',
              style: AppStyles.textStyle20,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              SvgPicture.asset(AppIcons.time),
              SizedBox(width: 8.w),
              Text(
                '12 ч 30 мин',
                style: AppStyles.textStyle16.copyWith(
                  color: AppColors.kColor3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
