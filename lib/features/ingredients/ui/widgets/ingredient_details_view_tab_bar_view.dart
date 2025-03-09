import 'package:chief_mate/features/ingredients/ui/widgets/ingredient_details_view_tab_bar_view_body.dart';
import 'package:flutter/material.dart';

class IngredientDetailsViewTabBarView extends StatelessWidget {
  const IngredientDetailsViewTabBarView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: tabController, children: const [
      IngredientDetailsViewTabBarViewBody(),
      Text(
        'Working on it ......',
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
