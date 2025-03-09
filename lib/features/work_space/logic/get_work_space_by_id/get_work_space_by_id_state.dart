
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';
part 'get_work_space_by_id_state.freezed.dart';
@freezed
class GetWorkSpaceByIdState<T> with _$GetWorkSpaceByIdState<T> {
  const factory GetWorkSpaceByIdState.initial() = Initial;
  const factory GetWorkSpaceByIdState.loading() = Loading;
  const factory GetWorkSpaceByIdState.success(T data) = Success<T>;
  const factory GetWorkSpaceByIdState.error(ApiErrorModel error) = Error;
}