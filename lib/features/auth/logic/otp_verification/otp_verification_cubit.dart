
import 'package:chief_mate/features/auth/logic/otp_verification/otp_verification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      emit(OtpVerificationState.otpVerificationSuccess(otpVerificationRespons));
    }, failure: (apiErrorModel) {
      emit(OtpVerificationState.otpVerificationinError(apiErrorModel));
    });
  }
}
