import 'package:chief_mate/features/recipes/presemtation/views/add_recipe_view_body.dart';
import 'package:flutter/material.dart';

class AddRecipeView extends StatelessWidget {
  const AddRecipeView({super.key});
static const String routeName = '/add_recipe_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddRecipeViewBody(),
    );
  }
}
