import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class WatchCategoryViewAppBar extends StatelessWidget {
  const WatchCategoryViewAppBar({super.key});

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
          ),
        ),
        Text(
          '🍳  Завтрак',
          style: AppStyles.textStyle20,
        ),
        const SizedBox(),
      ],
    );
  }
}
