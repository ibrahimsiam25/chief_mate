import 'package:chief_mate/features/recipes/presemtation/views/widgets/favourire_recipe_view_body.dart';
import 'package:flutter/material.dart';

class FavouriteRecipeView extends StatelessWidget {
  const FavouriteRecipeView({super.key});
static const String routeName = "/favouriteRecipeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavourireRecipeViewBody(),
    );
  }
}
