import 'package:chief_mate/features/ingredients/presentation/views/widgets/custom_similar_recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteRecipeViewListView extends StatelessWidget {
  const FavouriteRecipeViewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .5,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
      ),
      itemBuilder: (context, index) => const CustomSimilarRecipeItem(),
    );
  }
}
