import 'package:chief_mate/features/auth/ui/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/ui/widgets/custom_auth_header_text.dart';
import 'package:chief_mate/features/auth/ui/widgets/phone_number_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddPhoneNumberViewBody extends StatelessWidget {
  const AddPhoneNumberViewBody({super.key});

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAuthHeaderText(
                    text: 'Номер телефона',
                  ),
                  SizedBox(height: 30.h),
                  const PhoneNumberPicker(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
