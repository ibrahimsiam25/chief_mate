import 'package:chief_mate/features/auth/data/data_source/static/on_boarding_data.dart';
import 'package:chief_mate/features/auth/ui/screens/ask_create_work_space_or_wait_invitation.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_dot_controller.dart';
import 'package:chief_mate/features/auth/ui/widgets/on_boarding_view_app_bar.dart';
import 'package:chief_mate/features/auth/ui/widgets/page_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes.dart';

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
                // currentPage++;
                // if (currentPage > onBoardingData.length - 1) {
                //   GoRouter.of(context).push(AppRoutes.kWorkSpaceNameView);
                //   print('khdsjbd');
                // } else {
                //   pageController.animateToPage(currentPage,
                //       duration: const Duration(milliseconds: 900),
                //       curve: Curves.easeInOut);
                // }
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
