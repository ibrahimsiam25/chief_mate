import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class InstructionsViewAppBar extends StatelessWidget {
  const InstructionsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(
            AppIcons.arrowBack,
            color: AppColors.kColor4,
          ),
        ),
        Row(
          children: [
            Text(
              'Шаг',
              style: AppStyles.textStyle20,
            ),
            Text(
              ' 1',
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
