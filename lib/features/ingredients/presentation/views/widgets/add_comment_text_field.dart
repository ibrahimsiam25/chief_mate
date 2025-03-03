import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddCommentTextField extends StatelessWidget {
  const AddCommentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kColor7,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: SvgPicture.asset(
            AppIcons.camera,
          ),
        ),
        suffixIconConstraints: BoxConstraints(maxHeight: 50.h, maxWidth: 50.w),
        hintText: 'Написать комментарий',
        hintStyle: AppStyles.textStyle16.copyWith(
          color: AppColors.kColor7,
        ),
        filled: true,
        fillColor: AppColors.kColor5,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        constraints: BoxConstraints(
          minHeight: 40.h,
          maxHeight: 40.h,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: const BorderSide(
        color: AppColors.kColor11,
      ),
    );
  }
}
