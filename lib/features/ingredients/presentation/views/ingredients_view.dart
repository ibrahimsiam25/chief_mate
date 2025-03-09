import 'package:flutter/material.dart';

import '../widgets/ingredients_view_body.dart';

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
