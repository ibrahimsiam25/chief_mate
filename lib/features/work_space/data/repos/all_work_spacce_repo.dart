import 'package:chief_mate/core/networking/api_error_handler.dart';
import 'package:chief_mate/core/networking/api_result.dart';
import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/work_space/data/models/all_work_space_response_model.dart';

class AllWorkSpaceRepo {
  final ApiService _apiService ;
  AllWorkSpaceRepo(this._apiService);
  Future<ApiResult<AllWorkSpaceResponseModel>>getAllWorkSpace() async {
    try {
      final response = await _apiService.getAllWorkSpaces();
      
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
