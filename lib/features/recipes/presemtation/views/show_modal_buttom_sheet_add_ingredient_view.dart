import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_ingredient_bottom_sheet_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/ingredients_addded_tap_bar_view_body_recipe_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/all_ingredient_tap_bar_view_body_recipe_view.dart';

class ShowModalButtomSheetAddIngredientView extends StatefulWidget {
  const ShowModalButtomSheetAddIngredientView({super.key});

  @override
  State<ShowModalButtomSheetAddIngredientView> createState() =>
      _ShowModalButtomSheetAddIngredientViewState();
}

class _ShowModalButtomSheetAddIngredientViewState
    extends State<ShowModalButtomSheetAddIngredientView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
                child: const AddIngredientBottomSheetAppBar(),
              ),
            ),
            SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(
                TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(left: 20.w, right: 0),
                    indicatorColor: AppColors.kColor4,
                    labelColor: AppColors.kColor4,
                    unselectedLabelColor: AppColors.kColor12,
                    indicatorPadding: EdgeInsets.only(bottom: 5.h),
                    dividerHeight: 0,
                    labelStyle: TextStyle(fontSize: 18.sp),
                    tabs: const [
                      Tab(
                        child: Text(
                          'Все ингредиенты',
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Добавленные 3',
                        ),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: const [
            AllIngredientTapBarViewBodyRecipeView(),
            IngredientsAdddedTapBarViewBodyRecipeView(),
          ],
        ),
      ),
    );
  }
}
