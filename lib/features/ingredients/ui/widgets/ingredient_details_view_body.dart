import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_ingredient_photo.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_ingredient_details_view_app_bar.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredient_details_section.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/ingredient_details_view_tab_bar_view.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/similar_recipe_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientDetailsViewBody extends StatefulWidget {
  const IngredientDetailsViewBody({super.key});

  @override
  State<IngredientDetailsViewBody> createState() =>
      _IngredientDetailsViewBodyState();
}

class _IngredientDetailsViewBodyState extends State<IngredientDetailsViewBody>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController = TabController(length: 2, vsync: this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const CustomIngredienDetailsViewAppBar(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const CustomIngredientPhoto(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const IngredientDetailsSection(),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 40.h)),
            const SliverToBoxAdapter(
              child: SimilarRecipeSection(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 40.h)),
            SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(
                TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(left: 20.w),
                    indicatorColor: AppColors.kColor4,
                    labelColor: AppColors.kColor4,
                    unselectedLabelColor: AppColors.kColor12,
                    indicatorPadding: EdgeInsets.only(bottom: 5.h),
                    dividerHeight: 0,
                    labelStyle: TextStyle(fontSize: 20.sp),
                    tabs: const [
                      Tab(
                        child: Text('Комментарии'),
                      ),
                      Tab(
                        child: Text('Активность'),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20.h)),
          ];
        },
        body: IngredientDetailsViewTabBarView(tabController: tabController),
      ),
    ));
  }
}
