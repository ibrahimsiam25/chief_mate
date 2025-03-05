import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/routes/routes_import.dart';

class AddTaskViewAppBar extends StatelessWidget {
  const AddTaskViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 0);
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Text(
          'Создание задачи',
          style: AppStyles.textStyle20,
        ),
        SizedBox(width: 8.w),
        const SizedBox(),
      ],
    );
  }
}
