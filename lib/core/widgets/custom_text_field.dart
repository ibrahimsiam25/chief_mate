import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.prefixIcon,
      this.fillColor,
      this.maxLines = 1,
      this.borderColor,
      this.suffixIcon,
      this.minLines,  this.controller,  this.onChanged});

  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? borderColor;
  final int? maxLines;
  final int? minLines;
final TextEditingController? controller;
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
      onChanged: onChanged,
      cursorColor: AppColors.kColor7,
      maxLines: maxLines ?? 1,
      minLines: minLines ?? 1,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.kColor7,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? AppColors.kColor5,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: BorderSide(
        color: borderColor ?? AppColors.kColor11,
      ),
    );
  }
}
