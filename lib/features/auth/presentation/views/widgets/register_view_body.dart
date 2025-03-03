import 'package:chief_mate/features/auth/presentation/views/screens/login_with_email_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:chief_mate/core/constants/images.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/helper/validators_regex.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../logic/register/register_cubit.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String email, password, confirmPassword;
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
                      } else if (!ValidatorsRegex.isEmailValid(p0)) {
                        return "Пожалуйста, введите действительный\nадрес электронной почты";
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
                      } else if (!ValidatorsRegex.isPasswordValid(p0)) {
                        return "Пароль должен содержать не менее 8 символов\nвключая буквы и цифры вместе.";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.h),
                  CustomTextFormField(
                    onChanged: (value) {
                      confirmPassword = value!;
                    },
                    hintText: "Введите пароль еще раз",
                    textInputType: TextInputType.visiblePassword,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return "Это поле обязательно";
                      } else if (confirmPassword != password) {
                        return "Пароли не совпадают!";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    buttonName: 'Создать новый аккаунт',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.read<RegisterCubit>().emitRegisterStates(
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
                        "Уже есть аккаунт?",
                        style: AppStyles.textStyle16.copyWith(
                          color: AppColors.kColor2,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .push(LoginWithEmailView.routeName);
                          },
                          child: Text(
                            " Войти",
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
