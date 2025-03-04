import 'dart:async';

import 'package:chief_mate/core/widgets/build_message_bar.dart';
import 'package:chief_mate/core/widgets/custom_button.dart';
import 'package:chief_mate/features/auth/logic/otp_verification/otp_verification_cubit.dart';
import 'package:chief_mate/features/auth/logic/resend_otp/resend_otp_cubit.dart';
import 'package:chief_mate/features/auth/presentation/views/screens/user_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/custom_modal_progress.dart';
import '../../../../../core/widgets/show_error_dialog.dart';
import '../../../logic/otp_verification/otp_verification_state.dart';
import '../../../logic/resend_otp/resend_otp_state.dart';
import '../widgets/add_phone_number_view_app_bar.dart';
import '../widgets/custom_auth_header_text.dart';

class OtpVerificationWithEmailView extends StatefulWidget {
  const OtpVerificationWithEmailView({
    super.key,
  });

  @override
  State<OtpVerificationWithEmailView> createState() =>
      _OtpVerificationWithEmailViewState();
}

class _OtpVerificationWithEmailViewState
    extends State<OtpVerificationWithEmailView> {
  int _secondsRemaining = 150;
  bool _isButtonEnabled = false;
  Timer? _timer;
  final TextEditingController textEditingController = TextEditingController();
  String email = "";
  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        setState(() {
          _isButtonEnabled = true;
          timer.cancel();
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    textEditingController.dispose();
    super.dispose();
  }

  void _onButtonPressed() async {
    if (email == "") {
      email = await SharedPrefHelper.getString('email')!;
    }
    context.read<ResendOtpCubit>().emitresendOtpStates(email: email);
    setState(() {
      _secondsRemaining = 60;
      _isButtonEnabled = false;
    });

    _timer?.cancel();

    _startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResendOtpCubit, ResendOtpState>(
      listener: (context, state) {
        state.whenOrNull(
          resendOtpError: (apiErrorModel) {
            showErrorDialog(context, apiErrorModel);
          },
          resendOtpSuccess: (registerResponse) {
            buildMessageBar(context, "Код снова успешно отправлен");
          },
        );
      },
      child: Scaffold(
        body: BlocConsumer<OtpVerificationCubit, OtpVerificationState>(
          listener: (context, state) {
            state.whenOrNull(
              otpVerificationinError: (apiErrorModel) {
                setState(() {
                  textEditingController.clear();
                });
                showErrorDialog(context, apiErrorModel);
              },
              otpVerificationSuccess: (registerResponse) {
                GoRouter.of(context).push(UserInfoView.routeName,);
              },
            );
          },
          builder: (context, state) {
            return CustomModalProgress(
                isLoading: state is OtpVerificationLoading ? true : false,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomAuthAppBar(),
                          SizedBox(height: 30.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: const CustomAuthHeaderText(
                              text: "Код из электронной почты",
                            ),
                          ),
                          SizedBox(height: 40.h),
                          TextField(
                            controller: textEditingController,
                            keyboardType: TextInputType.number,
                            maxLength: 6,
                            onChanged: (value) async {
                              if (email == "") {
                                email =
                                    await SharedPrefHelper.getString('email')!;
                              }
                              if (value.length == 6) {
                                context
                                    .read<OtpVerificationCubit>()
                                    .emitOtpVerificationStates(
                                      email: email,
                                      otp: value,
                                    );
                              }
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Введите код",
                            ),
                          ),
                          Text(
                              _isButtonEnabled
                                  ? "Теперь можно отправить код снова"
                                  : "Вы сможете отправить код снова через\n$_secondsRemaining секунд",
                              style: AppStyles.textStyle16),
                         const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed:
                                _isButtonEnabled ? _onButtonPressed : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isButtonEnabled
                                  ? AppColors.kColor2
                                  : AppColors.kColor12,
                            ),
                            child: Text(
                              "Отправить код снова",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.kColor1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
