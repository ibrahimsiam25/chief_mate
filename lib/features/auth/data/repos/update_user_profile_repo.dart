import 'package:chief_mate/features/auth/data/models/update_user_profile_request_model.dart';
import 'package:chief_mate/features/auth/data/models/update_user_profile_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class UpdateUserProfileRepo {
  final ApiService _apiService;

  UpdateUserProfileRepo(this._apiService);
  Future<ApiResult<UpdateUserProfileResponseModel>> updateUserProfile(
      UpdateUserProfileRequestModel updateUserProfileRequestModel) async {
        try {
          final response = await _apiService.updateUserProfile(updateUserProfileRequestModel);
          return ApiResult.success(response);
        }catch (error) {
          return ApiResult.failure(ApiErrorHandler.handle(error));
        }
      }
}
