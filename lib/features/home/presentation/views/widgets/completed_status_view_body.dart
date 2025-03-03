import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_filter_completed_status_view_list_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_food_item_completed_status_view.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_status_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_worker_info_completed_status_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CompletedStatusViewBody extends StatelessWidget {
  const CompletedStatusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizedBox(height: 10.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomStatusAppBar(
                appBarStatusName: 'Выполнено',
                appBarStatusNum: '3',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 30.h),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextField(
                hintText: 'Поиск по ингредиентам',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.search,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20.h),
          ),
          const SliverToBoxAdapter(
            child: CustomFilterCompletedStatusViewListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 15.h),
          ),
          const SliverToBoxAdapter(
            child: CustomWorkerInfoCompletedStatusView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8.h),
          ),
          SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 16.h),
              child: const CustomFoodItemCompletedStatusView(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 10.h),
          ),
          const SliverToBoxAdapter(
            child: CustomWorkerInfoCompletedStatusView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8.h),
          ),
          SliverList.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 16.h),
              child: const CustomFoodItemCompletedStatusView(),
            ),
          ),
        ],
      ),
    );
  }
}
