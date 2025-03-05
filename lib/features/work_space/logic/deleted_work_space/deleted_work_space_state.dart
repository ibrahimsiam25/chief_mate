
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';
part 'deleted_work_space_state.freezed.dart';
@freezed
class DeletedWorkSpaceState<T> with _$DeletedWorkSpaceState<T> {
  const factory DeletedWorkSpaceState.initial() = _Initial;
  const factory DeletedWorkSpaceState.loading() = Loading;
  const factory DeletedWorkSpaceState.success(T data) = Success<T>;
  const factory DeletedWorkSpaceState.error(ApiErrorModel error) = Error;
}