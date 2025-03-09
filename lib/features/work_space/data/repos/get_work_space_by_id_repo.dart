import 'package:chief_mate/core/networking/api_error_handler.dart';
import 'package:chief_mate/core/networking/api_result.dart';
import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/auth/data/models/work_space_response_model.dart';

class GetWorkSpaceByIdRepo {
  final ApiService _apiService;

  GetWorkSpaceByIdRepo(this._apiService);

  Future<ApiResult<WorkSpaceResponseModel>> getWorkSpaceById(
      {required int id}) async {
    try {
      final response = await _apiService.getWorkSpaceById(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
