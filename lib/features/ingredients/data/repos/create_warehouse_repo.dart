import 'package:chief_mate/core/networking/api_error_handler.dart';
import 'package:chief_mate/core/networking/api_error_model.dart';
import 'package:chief_mate/core/networking/api_result.dart';
import 'package:chief_mate/core/networking/api_service.dart';
import 'package:chief_mate/features/ingredients/data/models/warehouse_response_model.dart';

import '../models/warehouse_requset_model.dart';

class CreateWarehouseRepo {
  final ApiService _apiService;
  CreateWarehouseRepo(this._apiService);
  Future<ApiResult<WarehouseResponseModel>>createWarehouse({
    required String title,
    required String type,
  })async{
   try{
     final response = await _apiService.createWarehouse( WarehouseRequestModel(
      title: title,
      type: type,
    ));
    return ApiResult.success(response);
   }catch(e){
     return ApiResult.failure(ApiErrorHandler.handle(e));
   }
}}
