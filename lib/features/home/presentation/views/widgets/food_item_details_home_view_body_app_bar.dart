import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class FoodItemDetailsHomeViewBodyAppBar extends StatelessWidget {
  const FoodItemDetailsHomeViewBodyAppBar({super.key});

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
            SvgPicture.asset(AppIcons.favouriteOutlined),
            SizedBox(width: 20.w),
            SvgPicture.asset(AppIcons.more),
          ],
        )
      ],
    );
  }
}
