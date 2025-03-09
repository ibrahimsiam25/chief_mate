import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/widgets/custom_filter_item.dart';
import 'package:chief_mate/features/ingredients/data/models/all_warehouse_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../work_space/data/models/all_work_space_response_model.dart';

class CustomFilterIngredientsViewListView extends StatefulWidget {
  const CustomFilterIngredientsViewListView({required this.allWarehouseResponseModel,super.key});
final AllWarehouseResponseModel allWarehouseResponseModel;
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
            itemCount: widget.allWarehouseResponseModel.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedFilterIndex = index ;
                    });
                  },
                  child: CustomFilterItem(
                    filterName: widget.allWarehouseResponseModel.data![index].title??"",
                    isSelected: _selectedFilterIndex == index ,
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
