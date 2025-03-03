import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_filter_related_recipe_view_list_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_related_recipes_view_section.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/related_recipes_view_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/related_recipes_view_card_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class RelatedRecipesViewBody extends StatelessWidget {
  const RelatedRecipesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const RelatedRecipesViewAppBar(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const RelatedRecipesViewCardOptions(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            const SliverToBoxAdapter(
              child: CustomFilterRelatedRecipeViewListView(),
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
              child: CustomRelatedRecipesViewSection(),
            ),
          ],
        ),
      ),
    );
  }
}
