import 'package:chief_mate/core/di/dependency_injection.dart';
import 'package:chief_mate/features/auth/ui/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/google_sign_in/google_sign_in_cubit.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static String routeName = '/signUpView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>getIt<GoogleSignInCubit>(),
      child: const Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
