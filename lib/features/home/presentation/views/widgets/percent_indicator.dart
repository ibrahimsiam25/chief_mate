import 'package:chief_mate/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentIndicator extends StatefulWidget {
  const PercentIndicator({super.key});

  @override
  State<PercentIndicator> createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 25.0.r,
      percent: 40 / 100,
      center: const Icon(
        Icons.pause,
        color: AppColors.kCursorColor,
        size: 20,
      ),
      progressColor: AppColors.kCursorColor,
    );
  }
}
