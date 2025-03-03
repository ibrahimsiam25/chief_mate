import 'package:chief_mate/features/home/presentation/views/widgets/custom_filter_food_details_filter_list_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_food_item_photo.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/food_item_details_home_view_body_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/food_item_details_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodItemDetailsHomeViewBody extends StatelessWidget {
  const FoodItemDetailsHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(height: 10.h),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const FoodItemDetailsHomeViewBodyAppBar(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const CustomFoodItemPhoto(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h),
                ),
                const SliverToBoxAdapter(
                  child: CustomFilterFoodDetailsFilterListView(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 16.h),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const FoodItemDetailsSection(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 40.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 80.h)
        ],
      ),
    );
  }
}
