import 'package:chief_mate/features/recipes/presemtation/views/widgets/ingredients_added_tap_bar_view_body_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIngrediebtsAddedTapBarViewBodyListView extends StatelessWidget {
  const CustomIngrediebtsAddedTapBarViewBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.5.w, right: 4.5.w),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {},
              child: const IngredientsAddedTapBarViewBodyListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
