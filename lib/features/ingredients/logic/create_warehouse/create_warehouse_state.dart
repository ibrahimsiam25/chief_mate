import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/networking/api_error_model.dart';
part 'create_warehouse_state.freezed.dart';
@freezed
abstract class CreateWarehouseState<T> with _$CreateWarehouseState<T> {
  const factory CreateWarehouseState.initial() = Initial;
  const factory CreateWarehouseState.loading() = Loading;
  const factory CreateWarehouseState.success(T data) = Success<T>;
  const factory CreateWarehouseState.error(ApiErrorModel apiErrorModel) = Error;
}