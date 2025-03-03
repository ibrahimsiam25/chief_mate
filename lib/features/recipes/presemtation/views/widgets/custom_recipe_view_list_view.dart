import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_similar_recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRecipeViewListView extends StatelessWidget {
  const CustomRecipeViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
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
              child: const CustomSimilarRecipeItem(),
            ),
          ),
        ],
      ),
    );
  }
}
