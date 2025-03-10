
import 'dart:io';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/ingredient_request_model.dart';
import '../models/ingredient_response_model.dart';

class IngredientRepo {
  final ApiService _apiService;

  IngredientRepo(this._apiService);

  Future<ApiResult<IngredientResponseModel>> createIngredient({
    required IngredientRequestModel ingredientRequestModel,

  }) async {
    try {
      final response = await _apiService.createIngredient(
     ingredientRequestModel,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
