import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_categry_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_options.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_text_fields.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_recipe_view_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_timer_row_recipe_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../ingredients/presentation/widgets/custom_add_photo.dart';

class AddRecipeViewBody extends StatelessWidget {
  const AddRecipeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAddRecipeViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16.h),
            ),
            const SliverToBoxAdapter(
              child: CustomAddPhoto(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10.h),
            ),
            const SliverToBoxAdapter(
              child: AddCategryButton(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40.h),
            ),
            const SliverToBoxAdapter(
              child: CustomAddRecipeTextFields(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40.h),
            ),
            const SliverToBoxAdapter(
              child: CustomTimerRowRecipeView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40.h),
            ),
            const SliverToBoxAdapter(
              child: CustomAddRecipeOptions(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 150.h),
            ),
          ],
        ),
      ),
    );
  }
}
