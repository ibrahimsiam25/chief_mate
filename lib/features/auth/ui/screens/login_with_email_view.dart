import 'package:chief_mate/features/auth/logic/login/login_state.dart';
import 'package:chief_mate/features/auth/ui/widgets/login_with_email_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/routes/routes_import.dart';
import '../../../../core/widgets/custom_modal_progress.dart';
import '../../../../core/widgets/show_error_dialog.dart';
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
              GoRouter.of(context).go(BottomNavBarController.routeName);
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
