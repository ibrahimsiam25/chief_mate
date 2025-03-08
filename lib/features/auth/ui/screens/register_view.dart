import 'package:chief_mate/core/constants/app_constants.dart';
import 'package:chief_mate/features/auth/logic/resend_otp/resend_otp_state.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/api_error_constants.dart';
import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/custom_modal_progress.dart';
import '../../../../core/widgets/show_error_dialog.dart';
import '../../logic/register/register_state.dart';
import '../widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String routeName = '/registerView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            registerError: (apiErrorModel) async {
              if (apiErrorModel.errors![ApiErrorConstants.errors]
                      [ApiErrorConstants.email] ==
                  ApiErrorConstants.emailExistsButNotVerified) {
                String email = await SharedPrefHelper.getString(Prefs.email);
                await context
                    .read<ResendOtpCubit>()
                    .emitresendOtpStates(email: email);
                GoRouter.of(context).go(OtpVerificationWithEmailView.routeName);
              } else {
                showErrorDialog(context, apiErrorModel);
              }
            },
            registerSuccess: (registerResponse) {
              GoRouter.of(context).go(OtpVerificationWithEmailView.routeName);
            },
          );
        },
        builder: (context, registerSate) {
          return BlocBuilder<ResendOtpCubit, ResendOtpState>(
            builder: (context, resendState) {
              return CustomModalProgress(
                isLoading: registerSate is RegisterLoading ||
                    resendState is ResendOtpLoading,
                child: const RegisterViewBody(),
              );
            },
          );
        },
      ),
    );
  }
}
