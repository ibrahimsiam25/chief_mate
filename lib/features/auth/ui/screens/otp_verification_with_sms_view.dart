import 'package:chief_mate/features/auth/ui/widgets/custom_containue_button.dart';
import 'package:chief_mate/features/auth/ui/widgets/otp_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/routes.dart';

class OtpVerificationWithSmsView extends StatelessWidget {
  const OtpVerificationWithSmsView({
    super.key,
  });
static const String routeName = '/otp-verification-with-sms-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
     const   OtpViewBody(
    
        ),
        Positioned(
          right: 20.w,
          bottom: 20.h,
          child: CustomContainueButton(
            onTap: () {
      
            },
          ),
        ),
      ],
    ));
  }
}
