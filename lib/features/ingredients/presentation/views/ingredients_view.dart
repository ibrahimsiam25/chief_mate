import 'package:chief_mate/features/ingredients/presentation/views/widgets/ingredients_view_body.dart';
import 'package:flutter/material.dart';

class IngredientsView extends StatelessWidget {
  const IngredientsView({super.key});
static const String routeName = "/IngredientsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IngredientsViewBody(),
    );
  }
}
