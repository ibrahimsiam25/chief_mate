import 'package:chief_mate/features/home/presentation/views/widgets/custom_filter_home_view_list_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_home_view_info.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_food_item.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_status_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routes/routes_import.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 5.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomHomeViewAppBar(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomHomeViewInfo(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 60.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomStatusOptions(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 16.h),
          ),
          const SliverToBoxAdapter(
            child: CustomFilterHomeViewListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 16.h),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 16.h),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(FoodItemDetailsHomeView.routeName);
                },
                child: const CustomFoodItemHomeView(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 70.h),
          ),
        ],
      ),
    );
  }
}
