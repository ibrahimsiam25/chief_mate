import 'package:chief_mate/features/recipes/presemtation/views/widgets/draft_recipe_view_body.dart';
import 'package:flutter/material.dart';

class DraftRecipeView extends StatelessWidget {
  const DraftRecipeView({super.key});
static const String routeName = '/draft-recipe-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DraftRecipeViewBody(),
    );
  }
}
