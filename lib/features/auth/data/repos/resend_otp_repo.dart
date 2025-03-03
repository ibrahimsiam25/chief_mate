import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/resend_otp_request_model.dart';

class ResendOtpRepo {
  final ApiService _apiService;

  ResendOtpRepo(this._apiService);

  Future<ApiResult<Map<String, String>>> resendOtp(
      String email) async {
    try {
      final response = await _apiService.resendOtp(ResendOtpRequestModel(email: email));
      return ApiResult.success(response);
    } catch (error) {
 
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}



