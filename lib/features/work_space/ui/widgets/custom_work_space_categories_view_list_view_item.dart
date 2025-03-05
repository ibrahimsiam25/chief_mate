import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomWorkSpaceCategoriesViewListViewItem extends StatelessWidget {
  const CustomWorkSpaceCategoriesViewListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          alignment: Alignment.bottomLeft,
          height: 100.h,
          decoration: BoxDecoration(
            color: const Color(0xffFF2D5E),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            'Sage',
            style: AppStyles.textStyle16,
          ),
        ),
        Positioned(
          right: 10.w,
          top: 10.w,
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AppIcons.more,
              width: 15.w,
            ),
          ),
        )
      ],
    );
  }
}
