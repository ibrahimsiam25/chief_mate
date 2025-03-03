import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/prefs.dart';

import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import '../../../../../core/routes/routes.dart';
class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRoutes.kWorkSpaceCategories);
          },
          child: SvgPicture.asset(
            AppIcons.arrowDown,
            height: 24.h,
            width: 24.w,
          ),
        ),
        Text(
          prefs.getString(Prefs.workSpaceName).toString(),
          style: AppStyles.textStyle20,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRoutes.kWorkSpaceView);
          },
          icon: SvgPicture.asset(
            AppIcons.more,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }
}
