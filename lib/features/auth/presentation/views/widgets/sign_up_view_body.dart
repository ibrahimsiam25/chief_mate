import 'package:chief_mate/core/constants/icons.dart';
import 'package:chief_mate/core/constants/images.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/accept_terms_and_conditions.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/app_info.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/custom_sign_in_with_social.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/or_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import '../screens/login_with_email_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SvgPicture.asset(
            AppImages.starter,
            width: MediaQuery.of(context).size.width,
            height: 300.h,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const AppInfo(),
                SizedBox(height: 15.h),
                CustomButton(
                  buttonName: 'Начать',
                  onTap: () {
                    GoRouter.of(context).push(LoginWithEmailView.routeName);
                  },
                ),
                SizedBox(height: 15.h),
                const OrLine(),
                SizedBox(height: 12.h),
                CustomSignInWithSocial(
                  onTap: () {},
                  buttonName: 'Войти с Google',
                  buttonIcon: AppIcons.google,
                ),
                SizedBox(height: 12.h),
                const AcceptTermsAndConditions(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
