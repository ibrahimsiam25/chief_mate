import 'package:flutter/material.dart';

import '../../widgets/add_ingredient_tap_bar_view_body.dart';

class AddIngredientTapBarView extends StatelessWidget {
  const AddIngredientTapBarView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        clipBehavior: Clip.none,
        controller: tabController,
        children: const [
          AddIngredientTapBarViewBody(),
          Text(
            'Working on it ......',
            textAlign: TextAlign.center,
          ),
        ]);
  }
}
