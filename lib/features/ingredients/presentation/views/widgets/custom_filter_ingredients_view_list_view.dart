import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomFilterIngredientsViewListView extends StatefulWidget {
  const CustomFilterIngredientsViewListView({super.key});

  @override
  State<CustomFilterIngredientsViewListView> createState() =>
      _CustomFilterIngredientsViewListViewState();
}

class _CustomFilterIngredientsViewListViewState
    extends State<CustomFilterIngredientsViewListView> {
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
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedFilterIndex = 0;
                  });
                },
                child: SvgPicture.asset(
                  AppIcons.filter,
                  height: 35.h,
                ),
              ),
            ),
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
                    filterName: 'Тег_группа 1',
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
