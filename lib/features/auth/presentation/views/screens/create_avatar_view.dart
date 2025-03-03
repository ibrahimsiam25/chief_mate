import '../../../../../core/routes/routes.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/create_avatar_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateAvatarView extends StatelessWidget {
  const CreateAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const CreateAvatarViewBody(),
            Positioned(
              right: 20.w,
              bottom: 20.h,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: CustomButton(
                    onTap: () {
                      GoRouter.of(context).push(AppRoutes.kAddPhoneNumberView);
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
