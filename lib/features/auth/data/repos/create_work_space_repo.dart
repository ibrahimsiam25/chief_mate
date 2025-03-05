import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/auth/data/models/create_work_space_request_model.dart';
import 'package:chief_mate/features/auth/data/models/create_work_space_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';

class CreateWorkSpaceRepo {
  final ApiService _apiService;

  CreateWorkSpaceRepo(this._apiService);
  Future<ApiResult<CreateWorkSpaceResponseModel>> createWorkSpace(
    {required CreateWorkSpaceRequestModel createWorkSpaceRequestModel}
  )async{
    try {
      final response = await _apiService.createWorkSpace(createWorkSpaceRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
