import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';

part 'get_all_warehouse_state.freezed.dart';

@freezed
abstract class GetAllWarehouseState<T> with _$GetAllWarehouseState<T> {
  const factory GetAllWarehouseState.initial() = Initial;
  const factory GetAllWarehouseState.loading() = Loading;
  const factory GetAllWarehouseState.success(T data) = Success<T>;
  const factory GetAllWarehouseState.error(ApiErrorModel apiErrorModel) = Error;
}
