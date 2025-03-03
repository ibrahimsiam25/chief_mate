import 'package:chief_mate/features/work_space/presentation/views/widgets/custom_work_space_categories_view_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWorkSpaceCategoriesViewListView extends StatelessWidget {
  const CustomWorkSpaceCategoriesViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 16,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 1.5,
      ),
      itemBuilder: (context, index) =>
          const CustomWorkSpaceCategoriesViewListViewItem(),
    );
  }
}
