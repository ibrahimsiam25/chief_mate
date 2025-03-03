import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomInstructionItem extends StatelessWidget {
  const CustomInstructionItem(
      {super.key, required this.icon, required this.text});
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(icon),
        SizedBox(height: 12.h),
        SizedBox(
          width: 200.w,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.textStyle16,
          ),
        )
      ],
    );
  }
}
