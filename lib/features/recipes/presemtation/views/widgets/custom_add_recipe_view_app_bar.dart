import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes_import.dart';

class CustomAddRecipeViewAppBar extends StatelessWidget {
  const CustomAddRecipeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 2);
            // GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(
            AppIcons.arrowBack,
            height: 24.h,
            width: 24.w,
          ),
        ),
        Row(
          children: [
            CustomAddRecipeButton(
              text: 'В черновик',
              textColor: AppColors.kColor4,
              buttonColor: AppColors.kColor5,
              onTap: () {},
            ),
            SizedBox(width: 12.w),
            CustomAddRecipeButton(
              text: 'Добавить',
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
