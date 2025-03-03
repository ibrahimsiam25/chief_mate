import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddIngredientTapBar extends StatelessWidget {
  const AddIngredientTapBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
          controller: tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: EdgeInsets.only(right: 16.w),
          indicatorColor: const Color(0xffFFFFFF),
          labelColor: const Color(0xffFFFFFF),
          unselectedLabelColor: const Color(0xff7E7E7E),
          indicatorPadding: EdgeInsets.only(bottom: 5.h),
          dividerHeight: 0,
          tabs: [
            Tab(
              child: Text('Ингредиенты', style: AppStyles.textStyle20),
            ),
            Tab(
              child: Text('Оборудование', style: AppStyles.textStyle20),
            ),
          ]),
    );
  }
}
