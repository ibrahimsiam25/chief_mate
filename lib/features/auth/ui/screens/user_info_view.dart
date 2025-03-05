import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/ui/screens/create_avatar_view.dart';
import 'package:chief_mate/features/auth/ui/widgets/user_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../widgets/add_phone_number_view_app_bar.dart';
import '../widgets/user_name_input_text_field.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({super.key});
  static const routeName = '/user-info';
  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> {
  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  late String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: formState,
        child: Stack(
          children: [
            SafeArea(
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
                      child: UserNameInputTextField(
                        onSaved: (value) {
                          if (value != null && value.isNotEmpty) {
                            userName = value; // Save the user's name
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
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
                        formState.currentState!.save(); // Save the form data

                        GoRouter.of(context)
                            .push(CreateAvatarView.routeName, extra: userName);
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
