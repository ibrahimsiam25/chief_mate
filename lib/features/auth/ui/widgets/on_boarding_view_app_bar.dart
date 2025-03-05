import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingViewAppBar extends StatelessWidget {
  const OnBoardingViewAppBar({super.key, this.skip});
  final void Function()? skip;

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
        GestureDetector(
          onTap: skip,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.kColor5,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Text('Пропустить', style: AppStyles.textStyle16),
          ),
        )
      ],
    );
  }
}
