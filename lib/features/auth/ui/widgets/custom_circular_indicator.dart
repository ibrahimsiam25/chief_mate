import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCircularIndicator extends StatelessWidget {
  const CustomCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 160.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: const Color(0xff5E5E5E),
            width: 2,
          ),
        ),
        child: CircularPercentIndicator(
          animation: true,
          animationDuration: 2500,
          radius: 10.r,
          lineWidth: 3.w,
          percent: 0.99,
          progressColor: const Color(0xffFFFFFF),
          backgroundColor: const Color(0xff5E5E5E),
          circularStrokeCap: CircularStrokeCap.round,
        ),
      ),
    );
  }
}
