import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/routes_import.dart';


class CustomAddIngredientViewAppBar extends StatelessWidget {
  const CustomAddIngredientViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 1);
            // GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(
            AppIcons.arrowBack,
            height: 24.h,
            width: 24.w,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: AppColors.kColor4,
            borderRadius: BorderRadius.all(Radius.circular(24.r)),
          ),
          child: Text(
            'Добавить',
            style: AppStyles.textStyle16.copyWith(color: AppColors.kColor1),
          ),
        )
      ],
    );
  }
}
