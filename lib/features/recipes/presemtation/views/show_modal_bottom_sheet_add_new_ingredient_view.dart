import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_new_ingredient_view_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_new_recipe_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../ingredients/presentation/widgets/custom_add_photo.dart';

class ShowModalBottomSheetAddNewIngredientView extends StatelessWidget {
  const ShowModalBottomSheetAddNewIngredientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Добавить',
          onTap: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            SizedBox(height: 10.h),
            const AddNewIngredientViewAppBar(),
            SizedBox(height: 16.h),
            const CustomAddPhoto(),
            SizedBox(height: 16.h),
            const CustomAddNewRecipeTextFields(),
            SizedBox(height: 200.h),
          ],
        ),
      ),
    );
  }
}
