import 'package:chief_mate/features/home/presentation/views/widgets/custom_calender.dart';
import 'package:chief_mate/features/home/presentation/views/widgets/custom_status_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalenderViewBody extends StatelessWidget {
  const CalenderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SafeArea(
        child: Column(
          children: [
            const CustomStatusAppBar(
              appBarStatusName: 'Календарь',
              appBarStatusNum: '',
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: CustomCalendar(
                onDaySelected: (p0) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
