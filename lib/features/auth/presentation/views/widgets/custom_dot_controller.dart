import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/features/auth/data/data_source/static/on_boarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingData.length,
          (index) {
            return Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                child: Container(
                  height: 8.h,
                  width: 8.w,
                  decoration: BoxDecoration(
                    color: index == currentPage
                        ? AppColors.kColor4
                        : AppColors.kColor8,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
