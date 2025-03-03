import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/percent_indicator.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/timer_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class TimerBody extends StatelessWidget {
  const TimerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TimerAppBar(),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Круассан • Шаг 1',
                  style: AppStyles.textStyle16.copyWith(
                    color: AppColors.kColor3,
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrowRirht,
                  color: AppColors.kColor3,
                  height: 10.h,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Вымесить однородное, эластичное тесто. Дать ему постоять в холодильнике',
                      style: AppStyles.textStyle16),
                  TextSpan(
                    text: ' 30 минут',
                    style: AppStyles.textStyle16.copyWith(
                      color: AppColors.kColor10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00:30:00',
                  style: TextStyle(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kColor3,
                  ),
                ),
                const PercentIndicator(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
