import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/widgets/custom_add_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/recipe_view_body.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/show_model_buttom_sheet_recipe_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResicpeView extends StatelessWidget {
  const ResicpeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RecipeViewBody(),
          Positioned(
            bottom: 90.h,
            right: 20.w,
            child: CustomAddButton(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: AppColors.kColor4,
                  context: context,
                  builder: (context) {
                    return const ShowModelButtomSheetRecipeViewBody();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
