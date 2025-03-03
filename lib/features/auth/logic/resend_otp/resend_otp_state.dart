import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';

part 'resend_otp_state.freezed.dart';

@freezed
class ResendOtpState<T> with _$ResendOtpState<T> {
  const factory ResendOtpState.initial() = _Initial;
  
  const factory ResendOtpState.resendOtpLoading() = ResendOtpLoading;
  const factory ResendOtpState.resendOtpSuccess(T data) = ResendOtpSuccess<T>;
  const factory ResendOtpState.resendOtpError(ApiErrorModel apiErrorModel) = ResendOtpError;
}
