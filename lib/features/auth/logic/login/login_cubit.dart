import 'package:chief_mate/features/auth/logic/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/prefs.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/models/login_request_model.dart';
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates(
      {required String email, required String password}) async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestModel(email: email, password: password),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(
          loginResponse.userDataAndToken?.first.accessToken ?? "");
      emit(LoginState.loginSuccess(loginResponse));
    }, failure: (apiErrorModel) {
      emit(LoginState.loginError(apiErrorModel));
    });
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(Prefs.token, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
