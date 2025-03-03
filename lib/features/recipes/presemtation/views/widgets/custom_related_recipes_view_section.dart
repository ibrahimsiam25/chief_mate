import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_related_recipes_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomRelatedRecipesViewSection extends StatelessWidget {
  const CustomRelatedRecipesViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: GestureDetector(
            onTap: () {
              // GoRouter.of(context).push(AppRoutes.kWatchCategoryView);
            },
            child: Row(
              children: [
                Text(
                  '🍳  Завтрак',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 12.h),
                SvgPicture.asset(AppIcons.arrowRirht)
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),
        const CustomRelatedRecipesViewListView(),
        SizedBox(height: 80.h),
      ],
    );
  }
}
