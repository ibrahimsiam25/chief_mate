import 'package:chief_mate/features/auth/logic/register/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/custom_modal_progress.dart';
import '../../../../../core/widgets/show_error_dialog.dart';
import '../../../logic/register/register_state.dart';
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
            registerError: (apiErrorModel) {
              showErrorDialog(context, apiErrorModel);
            },
            registerSuccess: (registerResponse) {
              SharedPrefHelper.setData("email", registerResponse.userData.email);
              GoRouter.of(context).push(AppRoutes.kOtpVerificationWithEmailView);
            },
          );
        },
        builder: (context, state) {
          return CustomModalProgress(
            isLoading: state is RegisterLoading ? true : false,
            child: const RegisterViewBody(),
          );
        },
      ),
    );
  }
}

