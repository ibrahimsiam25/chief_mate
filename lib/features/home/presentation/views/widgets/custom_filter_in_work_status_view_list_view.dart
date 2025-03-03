import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_filter_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomFilterInWorkStatusViewListView extends StatefulWidget {
  const CustomFilterInWorkStatusViewListView({super.key});

  @override
  State<CustomFilterInWorkStatusViewListView> createState() =>
      _CustomFilterInWorkStatusViewListView();
}

class _CustomFilterInWorkStatusViewListView
    extends State<CustomFilterInWorkStatusViewListView> {
  int _selectedFilterIndex = 1;

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
                    filterName: 'Горячий цех',
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
