import 'package:chief_mate/features/recipes/presemtation/views/add_step_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/related_recipes_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_options_item.dart';
import 'package:chief_mate/features/recipes/presemtation/views/show_modal_buttom_sheet_add_ingredient_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/show_modal_bottom_sheet_energy_value_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddRecipeOptions extends StatelessWidget {
  const CustomAddRecipeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAddRecipeOptionsItem(
          text: 'Ингредиенты',
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return const ShowModalButtomSheetAddIngredientView();
              },
            );
          },
        ),
        SizedBox(
          height: 40.h,
        ),
        const CustomAddRecipeOptionsItem(
          text: 'Оборудование',
        ),
        SizedBox(
          height: 40.h,
        ),
        CustomAddRecipeOptionsItem(
          text: 'Энергетическая ценность',
          onTap: () {
            showModalBottomSheet(
              useSafeArea: true,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const ShowModalBottomSheetEnergyValueView();
              },
            );
          },
        ),
        SizedBox(
          height: 40.h,
        ),
        CustomAddRecipeOptionsItem(
          text: 'Связанные рецепты',
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return const RelatedRecipesView();
              },
            );
          },
        ),
        SizedBox(
          height: 40.h,
        ),
        CustomAddRecipeOptionsItem(
          text: 'Пошаговая инструкция',
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return const AddStepView();
              },
            );
          },
        ),
      ],
    );
  }
}
