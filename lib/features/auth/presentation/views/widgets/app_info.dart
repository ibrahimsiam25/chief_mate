import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'ChefMate – надежный помощник на кухне',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.sp,
            height: 1.1,
            fontWeight: FontWeight.w500,
            color: const Color(0xffFFFFFF),
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'Создавайте рецепты, управляйте складом,\nзаданиями и командой',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xff9E9E9E),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
