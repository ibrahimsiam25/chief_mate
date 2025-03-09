import 'package:chief_mate/core/class/custom_sliver_app_bar_delegate.dart';
import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/add_ingredient_tap_bar_view.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_add_ingredient_view_app_bar.dart';
import 'package:chief_mate/features/ingredients/ui/widgets/custom_add_photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddIngredientViewBody extends StatefulWidget {
  const AddIngredientViewBody({super.key});

  @override
  State<AddIngredientViewBody> createState() => _AddIngredientViewBodyState();
}

class _AddIngredientViewBodyState extends State<AddIngredientViewBody>
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
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverToBoxAdapter(
              child: CustomAddIngredientViewAppBar(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16.h),
            ),
            const SliverToBoxAdapter(
              child: CustomAddPhoto(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20.h),
            ),
            SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(
                TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelPadding: EdgeInsets.only(right: 16.w),
                    indicatorColor: AppColors.kColor4,
                    labelColor: AppColors.kColor4,
                    unselectedLabelColor: AppColors.kColor12,
                    indicatorPadding: EdgeInsets.only(bottom: 5.h),
                    dividerHeight: 0,
                    tabs: [
                      Tab(
                        child:
                            Text('Ингредиенты', style: AppStyles.textStyle20),
                      ),
                      Tab(
                        child:
                            Text('Оборудование', style: AppStyles.textStyle20),
                      ),
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40.h),
            ),
          ];
        },
        body: AddIngredientTapBarView(
          tabController: tabController,
        ),
      ),
    ));
  }
}
