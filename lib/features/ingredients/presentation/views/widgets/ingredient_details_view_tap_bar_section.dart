import 'package:chief_mate/features/ingredients/presentation/views/widgets/ingredient_details_view_tab_bar_view.dart';
import 'package:chief_mate/features/ingredients/presentation/views/widgets/ingredient_details_view_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngrediantDetailsViewTapBarSection extends StatefulWidget {
  const IngrediantDetailsViewTapBarSection({super.key});

  @override
  State<IngrediantDetailsViewTapBarSection> createState() =>
      _IngrediantDetailsViewTapBarSectionState();
}

class _IngrediantDetailsViewTapBarSectionState
    extends State<IngrediantDetailsViewTapBarSection>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          IngredientDetailsViewTapBar(tabController: tabController),
          SizedBox(height: 26.h),
          ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child:
                IngredientDetailsViewTabBarView(tabController: tabController),
          ),
        ],
      ),
    );
  }
}
