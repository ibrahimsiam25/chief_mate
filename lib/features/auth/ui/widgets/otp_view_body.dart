import 'package:chief_mate/features/auth/ui/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_auth_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../core/constants/colors.dart';
import '../../logic/otp_verification/otp_verification_cubit.dart';
class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key });


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAuthAppBar(),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const CustomAuthHeaderText(
                text: 'Код из SMS',
              ),
            ),
            SizedBox(height: 40.h),
           OtpTextField(
      clearText: true,
      numberOfFields: 6,
      borderColor: Colors.amber,
      focusedBorderColor: AppColors.kCursorColor,
      cursorColor: AppColors.kCursorColor,

      showFieldAsBox: true,

      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textfield is filled
      onSubmit: (String verificationCode) {

      },
    ),
          ],
        ),
      ),
    );
  }
}
