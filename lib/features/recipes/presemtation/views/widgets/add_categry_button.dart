import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/recipes/presemtation/views/add_category_bottom_sheet_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddCategryButton extends StatelessWidget {
  const AddCategryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            useSafeArea: true,
            isDismissible: true,
            context: context,
            builder: (context) {
              return const AddCategoryBottomSheetBody();
            },
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: AppColors.kColor5,
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AppIcons.filter),
              Text(
                'Добавить категорию',
                style: AppStyles.textStyle16.copyWith(color: AppColors.kColor4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
