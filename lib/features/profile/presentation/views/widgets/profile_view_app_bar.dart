import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class ProfileViewAppBar extends StatelessWidget {
  const ProfileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: Text(
            'Профиль',
            style: AppStyles.textStyle20.copyWith(
              color: AppColors.kColor3,
            ),
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
