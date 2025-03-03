import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes.dart';

class CustomAddStatusViewAppBar extends StatelessWidget {
  const CustomAddStatusViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(AppRoutes.kBottomNavBarController, extra: 0);
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Row(
          children: [
            Text(
              'Сегодня в смене',
              style: AppStyles.textStyle20,
            ),
            SizedBox(width: 8.w),
            Text(
              '1',
              style: AppStyles.textStyle20.copyWith(
                color: AppColors.kColor3,
              ),
            ),
          ],
        ),
        const SizedBox(),
      ],
    );
  }
}
