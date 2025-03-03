import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_category_bottom_sheet_app_bar.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/add_category_button.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_add_category_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoryBottomSheetBody extends StatelessWidget {
  const AddCategoryBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 10.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const AddCategoryBottomSheetAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const AddCategoryButton(),
            ),
          ),
          const CustomAddCategoryViewListView(),
        ],
      ),
    );
  }
}
