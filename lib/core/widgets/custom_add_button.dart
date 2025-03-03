// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import 'package:chief_mate/core/constants/icons.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
    this.onTap,
    this.padding,
    this.height,
  });
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: AppColors.kColor4,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          AppIcons.add,
          height: height ?? 20.h,
        ),
      ),
    );
  }
}
