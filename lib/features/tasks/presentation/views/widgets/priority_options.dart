import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class PriorityOptions extends StatefulWidget {
  const PriorityOptions({super.key});

  @override
  State<PriorityOptions> createState() => _PriorityOptionsState();
}

class _PriorityOptionsState extends State<PriorityOptions> {
  String selectedText = 'Высокий';
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: AppColors.kColor5,
      onSelected: (value) {
        // Handle the selected value
        setState(() {
          selectedText = value;
        });
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'Высокий',
          child: Row(
            children: [
              SizedBox(width: 8.w),
              Text('Высокий', style: AppStyles.textStyle16),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Средний',
          child: Row(
            children: [
              SizedBox(width: 8.w),
              Text('Средний', style: AppStyles.textStyle16),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Низкий',
          child: Row(
            children: [
              SizedBox(width: 8.w),
              Text('Низкий', style: AppStyles.textStyle16),
            ],
          ),
        ),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: AppColors.kColor5,
          border: Border.all(
            color: AppColors.kColor11,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppIcons.upArrows,
                  color: AppColors.kColor13,
                ),
                SizedBox(width: 8.w),
                Text(
                  selectedText,
                  style: AppStyles.textStyle16,
                )
              ],
            ),
            SvgPicture.asset(
              AppIcons.arrowDown,
            ),
          ],
        ),
      ),
    );
  }
}
