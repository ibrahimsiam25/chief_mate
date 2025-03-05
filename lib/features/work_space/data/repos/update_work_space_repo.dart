import 'package:chief_mate/core/networking/api_error_handler.dart';
import 'package:chief_mate/core/networking/api_result.dart';
import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/auth/data/models/work_space_request_model.dart';
import 'package:chief_mate/features/auth/data/models/work_space_response_model.dart';

class UpdateWorkSpaceRepo {
  final ApiService _apiService;
  UpdateWorkSpaceRepo(this._apiService);
  Future<ApiResult<WorkSpaceResponseModel>> updateWorkSpace(
      {required int id ,required WorkSpaceRequestModel workSpaceRequestModel}) async {
    try {
      final response =
          await _apiService.updateWorkSpace(id,workSpaceRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
