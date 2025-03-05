import 'package:chief_mate/core/networking/api_result.dart';
import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/work_space/data/models/deleted_work_space_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class DeletedWorkSpaceRepo {
  final ApiService _apiService;
  DeletedWorkSpaceRepo(this._apiService);
  Future<ApiResult<DeletedWorkSpaceResponseModel>> deletWorkSpace({required int id}) async {
    try {
   final response = await _apiService.deleteWorkSpace(id);  
    return ApiResult.success(response);
    } catch (error) {
   return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
