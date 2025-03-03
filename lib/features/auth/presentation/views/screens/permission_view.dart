import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/permission_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PermissionView extends StatelessWidget {
  const PermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const PermissionViewBody(),
        Positioned(
          right: 20.w,
          bottom: 20.h,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: CustomButton(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.kOnBoardingView);
                },
                buttonName: 'Продолжить',
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
