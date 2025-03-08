import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/ui/widgets/ob_boarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const String routeName = "/onBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const OnBoardingViewBody(),
          Positioned(
            right: 20.w,
            bottom: 20.h,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: Column(
                  children: [
                    CustomButton(
                      onTap: () {
                        // GoRouter.of(context).push(AppRoutes.kOnBoardingView);
                      },
                      buttonName: '30 дней бесплатно',
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'далее 150 ₽ в месяц',
                      style: AppStyles.textStyle16.copyWith(
                        color: AppColors.kColor3,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
