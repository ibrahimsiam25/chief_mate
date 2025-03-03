import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsSelectedRow extends StatelessWidget {
  const ItemsSelectedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '6 позиций',
              style: AppStyles.textStyle16.copyWith(color: AppColors.kColor3),
            ),
            Text(
              'Отметить все',
              style: AppStyles.textStyle16,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        const Divider(),
      ],
    );
  }
}
