import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_text_field.dart';
import 'package:chief_mate/features/recipes/presemtation/views/widgets/show_modal_bottom_sheet_energy_value_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowModalBottomSheetEnergyValueView extends StatelessWidget {
  const ShowModalBottomSheetEnergyValueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          const ShowModalbottomSheetEnergyValueAppBar(),
          SizedBox(height: 40.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Калории (ккал)',
                      style: AppStyles.textStyle16,
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Белки (грамм)',
                      style: AppStyles.textStyle16,
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Жиры (грамм)',
                      style: AppStyles.textStyle16,
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Углеводы (грамм)',
                      style: AppStyles.textStyle16,
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
