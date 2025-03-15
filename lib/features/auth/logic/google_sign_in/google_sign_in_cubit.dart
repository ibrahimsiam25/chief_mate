import 'package:chief_mate/features/auth/logic/google_sign_in/google_sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/repos/google_sign_in_repo.dart';


class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepo _googleSignInRepo;

  GoogleSignInCubit(this._googleSignInRepo) : super(const GoogleSignInState.initial());

  void signInWithGoogle() async {
    emit(const GoogleSignInState.loading());
    final response = await _googleSignInRepo.signInWithGoogle();
    
    response.when(
      success: (googleUser) async {
        print("Google User *****************: ${googleUser.userDataAndToken}");
        print("*******************************");
         await saveUserToken(googleUser.userDataAndToken?.first.accessToken ?? "");
        emit(GoogleSignInState.success(googleUser));
      },
      failure: (error) {
        emit(GoogleSignInState.error(error));
      },
    );
  }
    Future<void> saveUserToken(String token) async {
      print("Token:ddddddddddddddddddddddddddd $token");
    await SharedPrefHelper.setSecuredString(Prefs.token, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
