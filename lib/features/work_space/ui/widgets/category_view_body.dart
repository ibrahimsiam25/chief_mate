import 'package:chief_mate/features/work_space/ui/widgets/custom_add_category.dart';
import 'package:chief_mate/features/work_space/ui/widgets/custom_category_view_app_bar.dart';
import 'package:chief_mate/features/work_space/ui/widgets/custom_category_view_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            const CustomCategoryViewAppBar(),
            SizedBox(height: 15.h),
            const CustomAddCategory(),
            const Expanded(
              child: CustomCategoryViewListView(),
            )
          ],
        ),
      ),
    );
  }
}
