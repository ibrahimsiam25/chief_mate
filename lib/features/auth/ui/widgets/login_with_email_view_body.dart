import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:chief_mate/core/constants/images.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/login/login_cubit.dart';
import '../screens/register_view.dart';

class LoginWithEmailViewBody extends StatefulWidget {
  const LoginWithEmailViewBody({super.key});

  @override
  State<LoginWithEmailViewBody> createState() => _LoginWithEmailViewBodyState();
}

class _LoginWithEmailViewBodyState extends State<LoginWithEmailViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
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
                  CustomTextFormField(
                    onChanged: (value) {
                      email = value!;
                    },
                    hintText: "Электронная почта",
                    textInputType: TextInputType.emailAddress,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return "Это поле обязательно";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFormField(
                    onChanged: (value) {
                      password = value!;
                    },
                    hintText: "Пароль",
                    textInputType: TextInputType.visiblePassword,
               validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return "Это поле обязательно";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    buttonName: 'Войти',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.read<LoginCubit>().emitLoginStates(
                            email: email, password: password);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Нет аккаунта?",
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.kColor2,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            GoRouter.of(context).go(RegisterView.routeName);
                          },
                          child: Text(
                            " Создайте аккаунт",
                            style: AppStyles.textStyle16.copyWith(
                              color: AppColors.kColor9,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
