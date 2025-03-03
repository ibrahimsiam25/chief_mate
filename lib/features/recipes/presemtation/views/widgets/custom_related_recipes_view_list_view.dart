import 'package:chief_mate/features/recipes/presemtation/views/widgets/custom_related_recipes_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRelatedRecipesViewListView extends StatelessWidget {
  const CustomRelatedRecipesViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315.h,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              width: 20.w,
            ),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: const CustomRelatedRecipesListViewItem(),
            ),
          ),
        ],
      ),
    );
  }
}
