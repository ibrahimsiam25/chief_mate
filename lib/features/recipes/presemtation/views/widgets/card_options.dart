import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardOptions extends StatelessWidget {
  const CardOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kFavouriteRecipeView);
            },
            child: const CustomCard(
              textName: 'Избранное',
              icon: AppIcons.favourite,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.kDraftRecipeView);
            },
            child: const CustomCard(
              textName: 'Черновики',
              icon: AppIcons.file,
            ),
          ),
        ),
      ],
    );
  }
}
