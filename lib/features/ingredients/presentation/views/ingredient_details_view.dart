import 'package:chief_mate/features/ingredients/presentation/widgets/ingredient_details_view_body.dart';
import 'package:flutter/material.dart';

class IngredientDetailsView extends StatelessWidget {
  const IngredientDetailsView({super.key});
static const String routeName = "/IngredientDetailsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IngredientDetailsViewBody(),
    );
  }
}
