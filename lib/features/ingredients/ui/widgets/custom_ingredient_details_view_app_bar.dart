import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import '../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredient_details_view_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../home/presentation/views/widgets/bottom_nav_bar_controller.dart';

class CustomIngredienDetailsViewAppBar extends StatelessWidget {
  const CustomIngredienDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .pushReplacement(BottomNavBarController.routeName, extra: 1);
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        Text(
          'Ингредиент',
          style: AppStyles.textStyle20.copyWith(
            color: AppColors.kColor3,
          ),
        ),
        const IngredientDetailsViewPopUpMenu(),
      ],
    );
  }
}
