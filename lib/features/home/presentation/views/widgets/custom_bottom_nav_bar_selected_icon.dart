import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBarSelectedIcon extends StatelessWidget {
  const CustomBottomNavBarSelectedIcon({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: const Color(0xff3E3E3E),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: child,
    );
  }
}
