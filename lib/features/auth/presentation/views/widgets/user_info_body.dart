import 'package:chief_mate/features/auth/presentation/views/widgets/add_phone_number_view_app_bar.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/user_info_header.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/user_name_input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoBody extends StatelessWidget {
  const UserInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAuthAppBar(),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: const UserInfoHeader(),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const UserNameInputTextField(),
            )
          ],
        ),
      ),
    );
  }
}
