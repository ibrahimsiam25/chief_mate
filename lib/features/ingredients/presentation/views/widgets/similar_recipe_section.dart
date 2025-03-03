import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_similar_recipe_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SimilarRecipeSection extends StatelessWidget {
  const SimilarRecipeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Text(
                'Связанные рецепты',
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
        SizedBox(height: 20.h),
        const CustomSimilarRecipeListView(),
      ],
    );
  }
}
