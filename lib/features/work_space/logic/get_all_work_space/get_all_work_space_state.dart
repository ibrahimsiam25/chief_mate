import 'package:chief_mate/core/networking/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_work_space_state.freezed.dart';
@freezed
class GetAllWorkSpaceState<T> with _$GetAllWorkSpaceState<T> {
  const factory GetAllWorkSpaceState.initial() = Initial;
  const factory GetAllWorkSpaceState.loading() = Loading;
  const factory GetAllWorkSpaceState.sucess(T data) = Success<T>;
  const factory GetAllWorkSpaceState.error(ApiErrorModel error) = Error;
}
