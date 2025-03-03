import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/favourite_recipe_view_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/favourite_recipe_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FavourireRecipeViewBody extends StatelessWidget {
  const FavourireRecipeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: FavouriteRecipeViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(
                hintText: 'Поиск по рецептам',
                suffixIcon: Padding(
                  padding:
                      EdgeInsets.only(right: 20.w, top: 15.h, bottom: 15.h),
                  child: SvgPicture.asset(
                    AppIcons.search,
                    color: AppColors.kColor4,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            const FavouriteRecipeViewListView(),
          ],
        ),
      ),
    );
  }
}
