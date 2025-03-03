import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomFilterHomeViewListView extends StatefulWidget {
  const CustomFilterHomeViewListView({super.key});

  @override
  State<CustomFilterHomeViewListView> createState() =>
      _CustomFilterHomeViewListViewState();
}

class _CustomFilterHomeViewListViewState
    extends State<CustomFilterHomeViewListView> {
  int _selectedFilterIndex = 1; // set the initial index to 1 for 'Все'

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
                  // setState(() {
                  //   _selectedFilterIndex = 0;
                  // });
                },
                child: SvgPicture.asset(
                  AppIcons.filter,
                  height: 35.h,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedFilterIndex = 1;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 8.w),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                decoration: BoxDecoration(
                  color: _selectedFilterIndex == 1
                      ? AppColors.kColor4
                      : AppColors.kColor5,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  'Все',
                  style: AppStyles.textStyle16.copyWith(
                    color: _selectedFilterIndex == 1
                        ? AppColors.kColor1
                        : AppColors.kColor4,
                  ),
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
                    filterName: 'Холодный цех',
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
