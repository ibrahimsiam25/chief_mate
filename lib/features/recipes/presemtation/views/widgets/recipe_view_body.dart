import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/card_options.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_filter_recipe_view_list_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_recipe_list_view_section.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/recipe_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class RecipeViewBody extends StatelessWidget {
  const RecipeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 5.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const RecipeViewAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CardOptions(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Рецепты',
                style: AppStyles.textStyle32,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomFilterRecipeViewlistView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Поиск по ингредиентам',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.search,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomRecipeListViewSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40.h),
          ),
          const SliverToBoxAdapter(
            child: CustomRecipeListViewSection(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 70.h),
          ),
        ],
      ),
    );
  }
}
