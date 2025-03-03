import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/otp_verification_request_model.dart';
import '../models/otp_verification_response_model.dart';

class OtpVerificationRepo {
  final ApiService _apiService;

  OtpVerificationRepo(this._apiService);

  Future<ApiResult< OtpVerificationResponseModel>> otpVerification(
      OtpVerificationRequestModel otpVerificationRequestModel) async {
    try {
      final response = await _apiService.otpVerification(otpVerificationRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
