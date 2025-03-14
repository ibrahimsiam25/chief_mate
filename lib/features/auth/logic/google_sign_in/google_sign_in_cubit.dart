import 'package:chief_mate/features/auth/logic/google_sign_in/google_sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/shared_pref_helper.dart';
import '../../data/repos/google_sign_in_repo.dart';


class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepo _googleSignInRepo;

  GoogleSignInCubit(this._googleSignInRepo) : super(const GoogleSignInState.initial());

  void signInWithGoogle() async {
    emit(const GoogleSignInState.loading());
    final response = await _googleSignInRepo.signInWithGoogle();
    
    response.when(
      success: (googleUser) async {
        print("Google User *****************: ${googleUser.toJson()}");
        print("*******************************");
        await SharedPrefHelper.setSecuredString("google_id_token", googleUser.idToken ?? "");
        emit(GoogleSignInState.success(googleUser));
      },
      failure: (error) {
        emit(GoogleSignInState.error(error));
      },
    );
  }
}
