import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/user_info_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formState,
        child: Stack(
          children: [
            const UserInfoBody(),
            Positioned(
              right: 20.w,
              bottom: 20.h,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: CustomButton(
                    onTap: () {
                      if (formState.currentState!.validate()) {
                        GoRouter.of(context).push(AppRoutes.kCreateAvatarView);
                      } else {}
                    },
                    buttonName: 'Продолжить',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
