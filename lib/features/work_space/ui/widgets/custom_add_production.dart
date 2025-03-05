import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CustomAddProduction extends StatelessWidget {
  const CustomAddProduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: CustomTextField(
                hintText: 'Название цеха',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 12.w),
                  child: SvgPicture.asset(
                    AppIcons.vLines,
                  ),
                ),
                fillColor: Colors.transparent,
                borderColor: Colors.transparent,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.kColor5,
                  borderRadius: BorderRadius.all(Radius.circular(24.r)),
                ),
                child: Text(
                  'Добавить',
                  style: AppStyles.textStyle16.copyWith(
                    color: AppColors.kColor6,
                  ),
                ),
              ),
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}
