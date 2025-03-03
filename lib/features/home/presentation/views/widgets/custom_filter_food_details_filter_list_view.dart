import 'package:chief_mate/core/widgets/custom_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilterFoodDetailsFilterListView extends StatefulWidget {
  const CustomFilterFoodDetailsFilterListView({super.key});

  @override
  State<CustomFilterFoodDetailsFilterListView> createState() =>
      _CustomFilterFoodDetailsFilterListViewState();
}

class _CustomFilterFoodDetailsFilterListViewState
    extends State<CustomFilterFoodDetailsFilterListView> {
  int _selectedFilterIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(width: 20.w),
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedFilterIndex = index + 2;
                    });
                  },
                  child: CustomFilterItem(
                    filterName: '🥐  Выпечка',
                    isSelected: _selectedFilterIndex == index + 2,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
