import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/recipe_view_app_bar_pop_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class RecipeViewAppBar extends StatelessWidget {
  const RecipeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppIcons.arrowDown,
          height: 24.h,
          width: 24.w,
        ),
        Text(
          '***** на Белорусской',
          style: AppStyles.textStyle20,
        ),
        const RecipeViewAppBarPopMenu(),
      ],
    );
  }
}
