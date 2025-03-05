import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/features/auth/data/data_source/static/on_boarding_data.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_auth_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewBody extends StatelessWidget {
  const PageViewBody({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          onBoardingData[index].image,
          height: 240.h,
        ),
        SizedBox(height: 25.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                onBoardingData[index].title,
                style: AppStyles.textStyle16,
              ),
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomAuthSubtitleText(
                text: onBoardingData[index].subTitle,
              ),
            )
          ],
        )
      ],
    );
  }
}
