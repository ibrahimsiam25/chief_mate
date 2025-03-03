import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_ingredient_view_app_bar.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/equipment_tab_bar_view_body.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/ingredients_tab_bar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsViewBody extends StatefulWidget {
  const IngredientsViewBody({super.key});

  @override
  State<IngredientsViewBody> createState() => _IngredientsViewBodyState();
}

class _IngredientsViewBodyState extends State<IngredientsViewBody>
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
                    left: 20.w, right: 20.w, top: 20.h, bottom: 10.h),
                child: const CustomIngredientViewAppBar(),
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
                    labelStyle: TextStyle(fontSize: 20.sp),
                    tabs: const [
                      Tab(
                        child: Text('Ингредиенты'),
                      ),
                      Tab(
                        child: Text('Оборудование'),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
          ];
        },
        body: TabBarView(controller: tabController, children: const [
          IngredientsTabBarViewBody(),
          EquipmentTabBarViewBody(),
        ]),
      ),
    );
  }
}
