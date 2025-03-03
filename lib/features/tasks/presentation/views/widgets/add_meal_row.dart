import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class AddMealRow extends StatelessWidget {
  const AddMealRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.kRelatedRecipesView);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Что нужно приготовить',
            style: AppStyles.textStyle20,
          ),
          SvgPicture.asset(AppIcons.addContainer2),
        ],
      ),
    );
  }
}
