import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes_import.dart';

class FavouriteRecipeViewAppBar extends StatelessWidget {
  const FavouriteRecipeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 2);
          },
          child: SvgPicture.asset(
            AppIcons.arrowBack,
          ),
        ),
        Text(
          'Избранное',
          style: AppStyles.textStyle20,
        ),
        const SizedBox(),
      ],
    );
  }
}
