import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class ShowModalbottomSheetEnergyValueAppBar extends StatelessWidget {
  const ShowModalbottomSheetEnergyValueAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Энергетическая ценность',
          style: AppStyles.textStyle20,
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
