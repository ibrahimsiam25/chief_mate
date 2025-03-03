import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/ingredients_view_botom_sheet_app_bar.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/products_item.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/selcted_row_items_bottom_sheet.dart';
import 'package:chief_mate/features/tasks/presentation/views/widgets/custom_add_meal_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsViewBotomSheetBody extends StatelessWidget {
  const IngredientsViewBotomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 10.h),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const IngredientsViewBotomSheetAppBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 12.h),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const SelctedRowItemsBottomSheet(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const CustomAddMealItem(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Продукты',
              style: AppStyles.textStyle20,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.h),
        ),
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ProductsItem();
          },
        ),
      ],
    );
  }
}
