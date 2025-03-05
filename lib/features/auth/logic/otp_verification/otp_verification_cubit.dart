
import 'package:chief_mate/features/auth/logic/otp_verification/otp_verification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/models/otp_verification_request_model.dart';
import '../../data/repos/otp_verification_repo.dart';

class OtpVerificationCubit extends Cubit<OtpVerificationState> {
  final OtpVerificationRepo _otpVerificationRepo;
  OtpVerificationCubit(this._otpVerificationRepo) : super(const OtpVerificationState.initial());

  void emitOtpVerificationStates(
      {required String email, required String otp}) async {
    emit(const OtpVerificationState.otpVerificationLoading());
    final response = await _otpVerificationRepo.otpVerification(
      OtpVerificationRequestModel(
        email: email,
        code: otp
      ),
    );
    response.when(success: (otpVerificationRespons) async {
      await saveUserToken(otpVerificationRespons.userDataAndToken?.first.accessToken ?? "");
      emit(OtpVerificationState.otpVerificationSuccess(otpVerificationRespons));
    }, failure: (apiErrorModel) {
      emit(OtpVerificationState.otpVerificationinError(apiErrorModel));
    });
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(Prefs.token, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
