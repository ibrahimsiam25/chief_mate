import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class AddIngredientBottomSheetAppBar extends StatelessWidget {
  const AddIngredientBottomSheetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Ингредиенты',
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.kColor4,
          ),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(
            AppIcons.close,
            color: AppColors.kColor10,
          ),
        )
      ],
    );
  }
}
