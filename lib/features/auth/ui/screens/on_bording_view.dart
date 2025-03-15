import 'package:chief_mate/core/constants/colors.dart';
import 'package:chief_mate/core/constants/styles.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chief_mate/features/auth/data/data_source/static/on_boarding_data.dart';
import 'package:chief_mate/features/auth/ui/screens/ask_create_work_space_or_wait_invitation.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_dot_controller.dart';
import 'package:chief_mate/features/auth/ui/widgets/page_view_body.dart';
import 'package:go_router/go_router.dart';
import 'package:chief_mate/core/constants/icons.dart';

import 'package:svg_flutter/svg.dart';



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
class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentPage = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController = PageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: OnBoardingViewAppBar(
              skip: () {
                GoRouter.of(context).push(AskCreateWorkSpaceOrWaitInvitation.routeName);
              },
            ),
          ),
          SizedBox(height: 30.h),
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onBoardingData.length,
              itemBuilder: (context, index) {
                return PageViewBody(
                  index: index,
                );
              },
            ),
          ),
          CustomDotController(currentPage: currentPage),
          const Spacer()
        ],
      ),
    );
  }
}
class OnBoardingViewAppBar extends StatelessWidget {
  const OnBoardingViewAppBar({super.key, this.skip});
  final void Function()? skip;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: SvgPicture.asset(AppIcons.arrowBack),
        ),
        GestureDetector(
          onTap: skip,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.kColor5,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Text('Пропустить', style: AppStyles.textStyle16),
          ),
        )
      ],
    );
  }
}
