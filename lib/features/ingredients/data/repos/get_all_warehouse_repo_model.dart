import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/all_warehouse_response_model.dart';

class GetAllWarehouseRepo {
  final ApiService _apiService;
  GetAllWarehouseRepo(this._apiService);

  Future<ApiResult<AllWarehouseResponseModel>> getAllWarehouse(String type) async {
    try {
      final response = await _apiService.getWarehouse(type);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
