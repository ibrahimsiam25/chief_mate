import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes_import.dart';

class AddMealRow extends StatelessWidget {
  const AddMealRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RelatedRecipesView.routeName);
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
