import 'package:chief_mate/core/constants/icons.dart';
import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_add_button.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_filter_ingredients_view_list_view.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_ingredients_list_view.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/routes/routes_import.dart';

class IngredientsTabBarViewBody extends StatelessWidget {
  const IngredientsTabBarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20.w, left: 20.w, right: 20.w),
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
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: const CustomFilterIngredientsViewListView(),
            ),
            const CustomIngredientsListView(),
          ],
        ),
        Positioned(
            bottom: 90.h,
            right: 20.w,
            child: CustomAddButton(
              onTap: () {
                GoRouter.of(context).push(AddIngredientView.routeName);
              },
            )),
      ],
    );
  }
}
