import 'package:chief_mate/features/auth/logic/login/login_state.dart';
import 'package:chief_mate/features/auth/presentation/views/widgets/login_with_email_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/custom_modal_progress.dart';
import '../../../../../core/widgets/show_error_dialog.dart';
import '../../../logic/login/login_cubit.dart';

class LoginWithEmailView extends StatelessWidget {
  const LoginWithEmailView({super.key});
  static const String routeName = '/sign-up-with-email';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loginError: (apiErrorModel) {
              showErrorDialog(context, apiErrorModel);
            },
            loginSuccess: (registerResponse) {
              GoRouter.of(context).go(AppRoutes.kBottomNavBarController);
            },
          );
        },
        builder: (context, state) {
          return CustomModalProgress(
            isLoading: state is LoginLoading ? true : false,
            child: const LoginWithEmailViewBody(),
          );
        },
      ),
    );
  }
}
