import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_new_ingredient_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_ingredient_tap_bar_view_body_list_view.dart';
import 'package:chief_mate/features/recipes/presemtation/views/show_modal_bottom_sheet_add_new_ingredient_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AllIngredientTapBarViewBodyRecipeView extends StatelessWidget {
  const AllIngredientTapBarViewBodyRecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: CustomButton(
          buttonName: 'Сохранить',
          onTap: () {},
        ),
      ),
      body: Column(
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
          AddNewIngredientButton(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return const ShowModalBottomSheetAddNewIngredientView();
                },
              );
            },
          ),
          const CustomAddIngredientTapBarViewBodyListView(),
          SizedBox(height: 80.h),
        ],
      ),
    );
  }
}
