import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';

part 'otp_verification_state.freezed.dart';

@freezed
class OtpVerificationState<T> with _$OtpVerificationState<T> {
  const factory OtpVerificationState.initial() = _Initial;
  
  const factory OtpVerificationState.otpVerificationLoading() = OtpVerificationLoading;
  const factory OtpVerificationState.otpVerificationSuccess(T data) = OtpVerificationSuccess<T>;
  const factory OtpVerificationState.otpVerificationinError(ApiErrorModel apiErrorModel) = OtpVerificationError;
}
