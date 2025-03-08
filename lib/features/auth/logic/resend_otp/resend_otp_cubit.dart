
import 'package:chief_mate/features/auth/logic/resend_otp/resend_otp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/resend_otp_repo.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  final  ResendOtpRepo _resendOtpRepo;
  ResendOtpCubit(this._resendOtpRepo) : super(const ResendOtpState.initial());

 Future<void> emitresendOtpStates(
      {required String email}) async {
    emit(const ResendOtpState.resendOtpLoading());
    final response = await _resendOtpRepo.resendOtp(
      email
    );
    response.when(success: (otpVerificationRespons) async {
      emit(ResendOtpState.resendOtpSuccess(otpVerificationRespons));
    }, failure: (apiErrorModel) {
      emit(ResendOtpState.resendOtpError(apiErrorModel));
    });
  }
}
