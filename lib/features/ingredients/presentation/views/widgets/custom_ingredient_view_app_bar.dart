import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIngredientViewAppBar extends StatelessWidget {
  const CustomIngredientViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Склад',
          style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xffFFFFFF)),
        ),
      ],
    );
  }
}
