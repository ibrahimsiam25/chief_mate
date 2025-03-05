
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';
part 'create_work_space_state.freezed.dart';
@freezed
class CreateWorkSpaceState<T> with _$CreateWorkSpaceState<T> {
  const factory CreateWorkSpaceState.initial() = _Initial;
  const factory CreateWorkSpaceState.loading() = Loading;
  const factory CreateWorkSpaceState.success(T data) = Success<T>;
  const factory CreateWorkSpaceState.error(ApiErrorModel error) = Error;
}
